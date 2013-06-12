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
    return template('bibframe-redis')

@route("/contact")
def contact():
    "Contact information"
    return template('contact')

@route("/marc21-ingestion")
def marc21_ingestion():
    "Slide view for MARC21 Ingestion into RLSP"
    return template('marc21-ingestion')

@route("/mods-ingestion")
def mods_ingestion():
    "Slide view for Fedora Commons MODS Ingestion into RLSP"
    return template('mods-ingestion')

@route("/resources")
def resources():
    "Resource view"
    return template('resources')

@route("/")
def index():
    record_sets = {}
    return template('index')

run(host='localhost', port=8013)
