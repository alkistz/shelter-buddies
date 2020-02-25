# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shelters = Shelter.create([{email: 'someemail@gmail.com', password: '123456xaxaxaxa!'}])
animals = Animal.create!([
  {
    name: "Bloody hell",
    animal_type: "Shark",
    race: "Great white",
    description: "Domesticated after killing 30 people, child friendly",
    age: 10 ,
    size: "Fucking huge",
    shelter: shelters.first
  },

  {
    name: "Jack",
    animal_type: "Dog",
    race: "Labrador",
    description: "Just a dog, you know how dogs are.",
    age: 5 ,
    size: "Medium",
    shelter: shelters.first
  },

  {
    name: "Madona",
    animal_type: "Turtle",
    race: "Turtle race",
    description: "She likes walks in the park when it is raining",
    age: 70 ,
    size: "Large",
    shelter: shelters.first
  },

  {
    name: "Rat",
    animal_type: "Cat",
    race: "Normal cat",
    description: "We don't know why but this cat really likes her name.",
    age: 6 ,
    size: "Small",
    shelter: shelters.first
  }
])
