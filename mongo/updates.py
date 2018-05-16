city = db.cities.find_one({ 'name':    'Munchen',
                            'country': 'Germany' })
city['isoCountryCode'] = 'DEU'
db.cities.save(city) # updates
