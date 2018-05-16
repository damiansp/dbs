# -*- coding: utf-8 -*-
from pymongo import MongoClient
import pprint

client = MongoClient('mongodb://localhost:27017')
db = client.examples

# $set will update existing field or add non-existing field
# $unset will remove a field if present
def find(action):
    if action == 'set':
        city = db.cities.update({ 'name':    'Munchen',
                                  'country': 'Germany' },
                                { '$set' : { 'isoCountryCode': 'DEU' }})
    elif action == 'unset':
        city = db.cities.update({ 'name':    'Munchen',
                                  'country': 'Germany' },
                                { '$unset' : { 'isoCountryCode': '' }})
        
if __name__ == '__main__':
    
