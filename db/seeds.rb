# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

menu_items = MenuItem.create([
  {
    "title": "Small beans",
    "description": "Beans, Small",
    "price": 45,
    "category": "starters",
  },
  {
    "title": "Gin beans",
    "description": "Beans, Gin",
    "price": 35,
    "category": "starters",
  },
  {
    "title": "Half beans",
    "description": "Beans, Half",
    "price": 55,
    "category": "starters",
  },
  {
    "title": "Big beans",
    "description": "Beans, Big",
    "price": 115,
    "category": "mains",
  },
  {
    "title": "BB beans",
    "description": "Beans, Big, Black",
    "price": 135,
    "category": "mains",
  },
  {
    "title": "Panda beans",
    "description": "Beans, Panda",
    "price": 220,
    "category": "mains",
  },
  {
    "title": "Sweet beans",
    "description": "Beans, Cute",
    "price": 95,
    "category": "desserts",
  },
  {
    "title": "Ice cream beans",
    "description": "Beans, Cold",
    "price": 80,
    "category": "desserts",
  },
  {
    "title": "Red beans",
    "description": "Beans, Red flavour",
    "price": 45,
    "category": "desserts",
  },
  {
    "title": "Coke",
    "size": "33cl",
    "price": 25,
    "category": "beverages",
  },
  {
    "title": "Zingo",
    "size": "33cl",
    "price": 25,
    "category": "beverages",
  },
  {
    "title": "Beer",
    "size": "50cl",
    "price": 25,
    "category": "beverages",
  },
  {
    "title": "Bean sallad",
    "description": "Beans, Salad",
    "price": 95,
    "category": "sides",
  },
  {
    "title": "Bean bread",
    "description": "Beans breaded",
    "price": 10,
    "category": "sides",
  }
])


