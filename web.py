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

DEMO_REDIS = redis.StrictRedis(host='tuttdemo')

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

@route("/redis-library-services-platform")
@route("/rlsp")
def rlsp():
    "Slide view for Redis Library Services Platform"
    stats = [{'value': DEMO_REDIS.get('global bf:Work'),
              'color': "#F38630"},
             {'value': DEMO_REDIS.get('global bf:Instance'),
              'color': "#E0E4CC"},
             {'value': DEMO_REDIS.get('global bf:Person'),
              'color': "#69D2E7"},
             {'value': DEMO_REDIS.get('global bf:Organization'),
              'color': '#00FF00'}]
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
