# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.destroy_all
Volunteer.destroy_all
Animal.destroy_all


p shelters = Shelter.create([
  {
    name: 'The friendly shelter',
    email: 'someemail@gmail.com',
    password: '123456xaxaxaxa!',
    address: 'Rue Bollinckx 203, Anderlecht'
 },
 {
    name: 'The happy shelter',
    email: 'someemail1@gmail.com',
    password: '123457xaxaxaxa!',
    address: 'Rue du Boulet 7, Brussels'
 },
 {
    name: 'The playful shelter',
    email: 'someemail3@gmail.com',
    password: '123458xaxaxaxa!',
    address: 'Boulevard du Regent 47, Brussels'
 }
])


p volunteers = Volunteer.create([
  {
    email: 'volunteer@gmail.com',
    password: 'volunteer123!A',
    first_name: 'Private Ryan',
    last_name: 'USA',
    description: 'Interered in taking Sharks for a walk in Brussels when it rains heavily.'
  },
  {
    email: 'johnRambo@gmail.com',
    password: 'voluntare1234!A',
    first_name: 'John',
    last_name: 'Rambo',
    description: 'Average ex army veteran looking for some affection from animals.'
  }
])

p animals = Animal.create!([
  {
    name: 'Doggie',
    animal_type: 'dog',
    race: 'labrador',
    age: 3,
    shelter_id: 13
  },
  {
    name: 'Kitty',
    animal_type: 'cat',
    race: 'siamese',
    age: 1,
    shelter_id: 14
  }
])

