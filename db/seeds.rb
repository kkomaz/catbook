# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Cat.create(name: "Moe", breed: "Tabby", weight: "fat")
c2 = Cat.create(name: "Ciprian", breed: "Calico", weight: "skinny")

h1 = Hobby.create(name: "eating")
h2 = Hobby.create(name: "playing")

CatHobby.create(cat: c1, hobby: h1)
CatHobby.create(cat: c2, hobby: h2)
