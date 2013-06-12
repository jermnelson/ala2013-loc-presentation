"""
Module for the Library of Congress BIBFRAME Roundtable Presentation at
ALA 2013
"""
__author__ = "Jeremy Nelson"

import datetime
import os

from bottle import template, request, route, run, static_file

PROJECT_ROOT = os.path.abspath(__name__)

@route("/bibframe-redis")
def bibframe_redis():
    "Slide view for BIBFRAME Entities in Redis" 
    return template('bibframe-redis',
                    category='slide')

@route("/contact")
def contact():
    "Contact information"
    return template('contact',
                    category='misc')

@route("/future")
def future():
    "Future plans"
    return template('future',
                    category='slide')

@route("/glossary.html")
def glossary():
    "Glossary view"
    return template('glossary',
                    category='misc')

@route("/marc21-ingestion")
def marc21_ingestion():
    "Slide view for MARC21 Ingestion into RLSP"
    return template('marc21-ingestion',
                    category='slide')

@route("/mods-ingestion")
def mods_ingestion():
    "Slide view for Fedora Commons MODS Ingestion into RLSP"
    return template('mods-ingestion',
                    category='slide')

@route("/redis-library-services-platform")
def rlsp():
    "Slide view for Redis Library Services Platform"
    return template('rlsp',
                    category='slide')

@route("/resources")
def resources():
    "Resource view"
    return template('resources',
                    category='misc')

@route("/")
def index():
    record_sets = {}
    return template('index',
                    category='home')

run(host='localhost', port=8013, reloader=True)
