# Using twitter data: who has highest followers / friends ratio?
from pymongo import MongoClient

client = MongoClient('mongodb://localhost:27017')
db = client.examples

def user_mentions():
    result = db.tweets.aggregate([
        { '$unwind': '$entities.user_mentions' },
        { '$group': { '_id': '$user.screen_name',
                      'count': { '$sum': 1 }}},
        { '$sort': { 'count': -1 }},
        { '$limit': 1 }])

def unique_user_mentions():
    result = db.tweets.aggregate([
        { '$unwind': '$entities.user_mentions' },
        { '$group': {
            '_id': '$user.screen_name',
            'mset': { '$addToSet': '$entities.user_mentions.screen_name' }}},
        { '$unwind': '$mset' },
        { '$group': { '_id': '$_id',
                      'count': { '$sum': 1 }}},
        { '$sort': { 'count': -1 }},
        { '$limit': 10 }])

if __name__ == '__main__':
    res = user_mentions
    pprint.pprint(res)

    res2 = unique_user_mentions
    pprint.pprint(res2)
