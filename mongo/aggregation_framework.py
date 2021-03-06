from pymongo import MongoClient
import pprint

client = MongoClient('mongdb://localhost:27017')
db = client.twitter

def most_tweets():
    result = db.tweets.aggregate([
        { '$group': { '_id': '$user.screen_name',
                      'count': { '$sum': 1 }}},
        { '$sort':  { 'count': -1 }}]) # -1: descending
    return result

if __name__ == '__main__':
    result = most_tweets()
    pprint.pprint(result)
