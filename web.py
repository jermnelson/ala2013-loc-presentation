"""
Module for the Library of Congress BIBFRAME Roundtable Presentation at
ALA 2013
"""
__author__ = "Jeremy Nelson"

import datetime
import json
import os

from bottle import template, request, route, run, static_file

PROJECT_ROOT = os.path.split(os.path.abspath(__name__))[0]

PRESENTATION_INFO = json.load(open(os.path.join(PROJECT_ROOT,
                                                'slides.json'),
                                   'rb'))
SLIDES = PRESENTATION_INFO.get('slides')


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
    return template('rlsp',
                    category='slide',
                    page='rlsp',
                    slides=SLIDES)

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
