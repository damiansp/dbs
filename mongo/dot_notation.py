db.autos.find({ 'dimensions.weight': { '$gt': 5000 }})

# {...
#    "dimensions": {
#       "weight": 5334,
#        ...
#    }, ...
# }

db.tweets.find({ 'entities.hashtags': { '$ne': [] }})
