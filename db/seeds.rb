# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0177009887",
    category: "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0154789722",
    category: "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0122334455",
    category: "japanese"
  },
  {
    name:         "Le grillon",
    address:      "place de la bourse 33000 Bordeaux",
    phone_number: "0556034412",
    category: "french"
  },
  {
    name:         "Ajax Camp",
    address:      "5 impasse des coders 47550 BOE",
    phone_number: "0553007001",
    category: "belgian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
