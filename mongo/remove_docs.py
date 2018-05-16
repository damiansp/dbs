# -*- coding: utf-8 -*-
from pymongo import MongoClient
import pprint

client = MongoClient('mongodb://localhost:27017')
db = client.examples

# remove all docs from collection
db.cities.remove()

# remove all docs and associated metadata, indices
db.cities.drop()

# remove matching
db.cities.remove({ 'name': 'Chicago' })

# remove if field is missing
db.cities.remove({ 'name': { '$exists': 0 }})

