# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rehab.delete_all
# ...
Rehab.create!(name: 'Lake Comfort',
    address: 'Via Guido Monzino 2, Como, Italy',
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

#...
Rehab.create!(name: 'Desert Shelter',
address: 'White Avenue 1490, Albuquerque, New Mexico, United States of America',
service:
 %{This beautiful piece is located in a beatiful, desertical pristine location in South-Western US.
In desert one can find peace and Desert Shelter has been designed to let people find peace.
The main services offered in the centre are: 
Alcohol detox services 
Yoga Sessions 
Trekking Excursions
Horse Riding 
Pet therapy
24/7 Psychological support},
picture_url: 'deserthouse.jpg',
    price: 350.0
)
#...
Rehab.create!(name: 'Da Gama Relief',
address: 'Raia-Santimol Road 39, Camorlim, Goa, India',
service: %{The aim beyond the creation of this centre is twofold: 
On the one hand, customers can recover in a tropical location by their fatigue. 
On the other hand, they can find easily themselves.
The services offered in the centre are:      
Alcohol detox services 
Yoga lessons 
Cricket pitches and equipment 
Olympic swimming pool
Cooking classes
24/7 Psychological support 
},
picture_url:'goavilla.jpg',
price: 300.0) 