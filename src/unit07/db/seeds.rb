# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pet.create(name: 'Fluffy', age: '44', description: 'This animal is a cat', pet_type: 1)
Pet.create(name: 'Fruit Loop', age: '2', description: 'This animal is a dog', pet_type: 0)
Pet.create(name: 'Deeogee', age: '4', description: 'This animal is not a cat', pet_type: 0)
Pet.create(name: 'Jim', age: '567', description: 'This animal is a not cat', pet_type: 0)
Pet.create(name: 'Xavier', age: '7', description: 'This animal is a not dog', pet_type: 1)
Pet.create(name: 'Fabian', age: '15', description: 'This animal is not a dog', pet_type: 1)