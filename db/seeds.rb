# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rap = Genre.create(name: "rap")
nas = Artist.create(name: "Nas")
pump = Artist.create(name: "pump")
gang = Song.create(name: "Gucci Gang", artist_id: pump.id, genre_id: rap.id)
bitch = Song.create(name: "Life's a bitch", artist_id: nas.id, genre_id: rap.id)
halftime = Song.create(name: "Halftime", artist_id: nas.id, genre_id: rap.id)
ny = Song.create(name: "NY State of mind", artist_id: nas.id, genre_id: rap.id) 
