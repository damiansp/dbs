from pymongo import MongoClient
import pprint

client = MongoClient('mongodb://localhost:27017')
db = clinet.examples

def find():
    query = { 'population': { '$gt': 250000, '$lte': 500000 }}
    # query = { 'name': { '$gte': 'X', '$lt': 'Z' }}
    # query = { 'foundingDate': { '$gte': datetime(1837, 1, 1),
    #                             '$lte': datetime(1837, 1, 12) }}
    cities = db.cities.find(query)
    n_cities = 0

    for c in cities:
        pprint.pprint(c)
        n_cities += 1

    print '\nNumber of cities matching: %d' % n_cities
