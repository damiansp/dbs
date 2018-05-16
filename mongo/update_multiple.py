# -*- coding: utf-8 -*-
from pymongo import MongoClient
import pprint

client = MongoClient('mongodb://localhost:27017')
db = client.examples

def main():
    db.cities.update({ 'country': 'Germany' },
                     { '$set': { 'isoCountryCode': 'DEU' }},
                     multi = True)
