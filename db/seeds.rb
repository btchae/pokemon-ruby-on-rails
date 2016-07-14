# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pokemon.delete_all
User.delete_all
user1 = User.create(name: 'Red')
user1.pokemons.create(name: 'Zigzagoon', nickname: 'ziggy', wild: false, species: 'Zigzagoon', types: ['Normal'])
Pokemon.create(name: 'Bidoof')