"""
Module for the Library of Congress BIBFRAME Roundtable Presentation at
ALA 2013
"""
__author__ = "Jeremy Nelson"

import datetime
import json
import os
import redis

from bottle import template, request, route, run, static_file

PROJECT_ROOT = os.path.split(os.path.abspath(__name__))[0]

PRESENTATION_INFO = json.load(open(os.path.join(PROJECT_ROOT,
                                                'slides.json'),
                                   'rb'))
SLIDES = PRESENTATION_INFO.get('slides')

DEMO_REDIS = redis.StrictRedis(host='li-b82p6v1-1208', port=6380)

@route('/assets/<type_of:path>/<filename:path>')
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

@route("/bibframe-redis")
def bibframe_redis():
    "Slide view for BIBFRAME Entities in Redis" 
    return template('bibframe-redis',
                    category='slide',
                    cover_art_key='bf:CoverArt:34',
                    creative_wrk_key='bf:MovingImage:1',
                    facet_annotation_key='bf:Annotation:Facet:1',
                    holding_key='bf:Holding:234',
                    instance_key='bf:Instance:1',
                    person_key='bf:Person:890',
                    page='bibframe-redis',
                    slides=SLIDES)

@route("/contact")
def contact():
    "Contact information"
    return template('contact',
                    category='misc',
                    page='contact',
                    slides=SLIDES)

@route("/future")
def future():
    "Future plans"
    return template('future',
                    category='slide',
                    page='future',
                    slides=SLIDES)

@route("/glossary.html")
def glossary():
    "Glossary view"
    return template('glossary',
                    category='misc',
                    page='glossary',
                    slides=SLIDES)

@route("/marc21-ingestion")
def marc21_ingestion():
    "Slide view for MARC21 Ingestion into RLSP"
    return template('marc21-ingestion',
                    category='slide',
                    page='marc21-ingestion',
                    slides=SLIDES)

@route("/mods-ingestion")
def mods_ingestion():
    "Slide view for Fedora Commons MODS Ingestion into RLSP"
    return template('mods-ingestion',
                    category='slide',
                    page='mods-ingestion',
                    slides=SLIDES)
@route("/pg-rdf-ingestion")
def pg_rdf_ingestion():
    "Slide view for Project Gutenberg RDF Ingestion into RLSP"
    return template('pg-rdf-ingestion',
                    category='slide',
                    page='pg-rdf-ingestion',
                    slides=SLIDES)


@route("/redis-library-services-platform")
@route("/rlsp")
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

@route("/resources")
def resources():
    "Resource view"
    return template('resources',
                    category='misc',
                    page='resources',
                    slides=SLIDES)

@route("/")
def index():
    record_sets = {}
    return template('index',
                    category='home',
                    slides=SLIDES)

run(host='localhost', port=8013, reloader=True)
