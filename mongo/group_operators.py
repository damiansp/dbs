import pprint
from pymongo import MongoClient

client = MongoClient('mongodb://localhost:27017')
db = client.examples

# aggregation operators:
# $sum   $first   $last   $max   $min   $avg

def hashtag_retweet_avg():
    result = db.tweets.aggregate([
        { '$unwind': '$entities.hashtags' },
        { '$group': { '_id': '$entities.hashtags.text',
                      'retweet_avg': { '$avg': '$retweet_count' }}},
        { '$sort': { 'retweet_avg': -1 }}])
    return result

def unique_hashtags_by_user():
    result = db.tweets.aggregate([
        { '$unwind': '$entities.hashtags' },
        { '$group': {'_id': '$user.screen_name',
                     'unique_hashtags': {
                         '$addToSet': '$entities.hastags.text' }}},
        { '$sort': { '_id': -1 }}])

if __name__ == '__main__':
    result = hashtag_retweet_avg()
    pprint.pprint(result)
