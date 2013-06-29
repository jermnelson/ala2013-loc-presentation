"""
Module for the Library of Congress BIBFRAME Roundtable Presentation at
ALA 2013
"""
__author__ = "Jeremy Nelson"

import datetime
import json
import os
import redis

from bottle import abort, template, request, route, run, static_file
from bottle import FlupFCGIServer

PROJECT_ROOT = os.path.split(os.path.abspath(__name__))[0]

PRESENTATION_INFO = json.load(open(os.path.join(PROJECT_ROOT,
                                                'slides.json'),
                                   'rb'))
SLIDES = PRESENTATION_INFO.get('slides')

#DEMO_REDIS = redis.StrictRedis(host='li-b82p6v1-1208', port=6380)
DEMO_REDIS = redis.StrictRedis(port=6380)

# A list of safe commands for access Redis server directly from the
# presentation
SAFE_COMMANDS = ['exists',
                 'hget',
                 'hgetall',
                 'hkeys',
                 'hlen',
                 'keys',
                 'scard',
                 'smembers',
                 'zcount'
                 'zrange']


@route('/ala2013/assets/<type_of:path>/<filename:path>')
def send_asset(type_of,filename):
    local_path = os.path.join(PROJECT_ROOT,
                              "assets",
                              type_of,
                              filename)
    if os.path.exists(local_path):
        return static_file(filename,
			   root=os.path.join(PROJECT_ROOT,
                                             "assets",
                                             type_of))

@route("/ala2013/bibframe-redis")
def bibframe_redis():
    "Slide view for BIBFRAME Entities in Redis" 
    return template('bibframe-redis',
                    category='slide',
                    cover_art_key='bf:CoverArt:22',
                    creative_wrk_key='bf:MovingImage:1',
                    facet_annotation_key='bf:Annotation:Facet:1',
                    holding_key='bf:Holding:234',
                    instance_key='bf:Instance:1',
                    person_key='bf:Person:11',
                    page='bibframe-redis',
                    slides=SLIDES)

@route("/ala2013/contact")
def contact():
    "Contact information"
    return template('contact',
                    category='misc',
                    page='contact',
                    slides=SLIDES)

@route("/ala2013/future")
def future():
    "Future plans"
    return template('future',
                    category='slide',
                    page='future',
                    slides=SLIDES)

@route("/ala2013/glossary.html")
def glossary():
    "Glossary view"
    return template('glossary',
                    category='misc',
                    page='glossary',
                    slides=SLIDES)

@route("/ala2013/marc21-ingestion")
def marc21_ingestion():
    "Slide view for MARC21 Ingestion into RLSP"
    return template('marc21-ingestion',
                    category='slide',
                    page='marc21-ingestion',
                    slides=SLIDES)

@route("/ala2013/mods-ingestion")
def mods_ingestion():
    "Slide view for Fedora Commons MODS Ingestion into RLSP"
    return template('mods-ingestion',
                    category='slide',
                    page='mods-ingestion',
                    slides=SLIDES)
@route("/ala2013/pg-rdf-ingestion")
def pg_rdf_ingestion():
    "Slide view for Project Gutenberg RDF Ingestion into RLSP"
    return template('pg-rdf-ingestion',
                    category='slide',
                    page='pg-rdf-ingestion',
                    slides=SLIDES)

@route("/ala2013/redis")
def redis_commands():
    "AJAX interface to the demo redis datastore"
    command = request.query.command
    redis_key = request.query.key
    if SAFE_COMMANDS.count(command) == 0:
        abort(403, "{0} not allowed".format(command))
    if len(redis_key) > 0:
        print("Command is {0} {1}".format(command, redis_key))
        result = getattr(DEMO_REDIS, command)(redis_key)
    else:
        result = getattr(DEMO_REDIS, command)()
    if type(result) == set:
        result = list(result)
    return json.dumps(result)
        
    

@route("/ala2013/redis-library-services-platform")
@route("/ala2013/rlsp")
def rlsp():
    "Slide view for Redis Library Services Platform"
    stats =[]
    for name, color in [('Book', "#F38630"),
                        ('Manuscript', "#BB4422"),
                        ('MovingImage', "#00FF00"),
                        ('NotatedMusic', "#EEBBEE"),
                        ('MusicalAudio', "#223344"),
                        ('Map', '#DD33AA'),
                        ('NonmusicalAudio', "#AA66AA"),
                        ('SoftwareOrMultimedia', "BBBBBB"),
                        ('Instance', "#E0E4CC"),
                        ('Person', "#69D2E7"),
                        ('Organization', "#AA7766")]:
        key = 'bf:{0}'.format(name)
        stats.append({'value': DEMO_REDIS.get('global {0}'.format(key)),
                      'name': '{0}s'.format(name),
                      'color': color})
   
    return template('rlsp',
                    category='slide',
                    page='rlsp',
                    slides=SLIDES,
                    stats=stats)

@route("/ala2013/resources")
def resources():
    "Resource view"
    return template('resources',
                    category='misc',
                    page='resources',
                    slides=SLIDES)

@route("/ala2013/")
def index():
    record_sets = {}
    return template('index',
                    category='home',
                    slides=SLIDES)
FLUP = False
if FLUP is True:
    run(server=FlupFCGIServer,
        host='0.0.0.0',
        port=8013)
else:
    run(host='0.0.0.0', 
        port=8013, 
        reloader=True)
