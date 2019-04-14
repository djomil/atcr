# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shop.delete_all
# ...
Shop.create!(name: 'Lake Comfort',
    address: 'Via Guido Monzino 2',
    country: 'Italy',
    service:
    %{This rehab clinic is located in one of the most beautiful villas in Northern Italy.
    Here, in a quiet, yet beautiful location you can start comfortably your rehabilitation process.
    The main services offered in the centre are: 
    Alcohol detox services
    Yoga sessions
    Rowing classes
    Tour of the region
   24/7 Psychological support 
   },
    picture_url: 'balbianellovilla.jpg',
    price: 250.0)

