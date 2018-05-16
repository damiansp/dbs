db.cities.find({ 'motto': { '$regex': 'friendship' }}).pretty()
db.cities.find({ 'motto': { '$regex': '[Ff]riendship|[Pp]ride' }}).pretty()
