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
    %{<p>
<em>A classical location to find peace</em> 
    This rehab clinic is located in one of the most beautiful villas in Northern Italy.<br> 
    Here, in a quiet, yet beautiful location you can start comfortably your rehabilitation process.<br> 
    The main services offered in the centre are: <li> 
    <ul>Alcohol detox services</ul> 
    <ul>Yoga sessions</ul> 
    <ul>Rowing classes</ul> 
    <ul>Tour of the region</ul> 
    <ul>24/7 Psychological support</ul> 
    </li></p>   
    },
    picture_url: 'balbianellovilla.jpg',
    price: 250.0)

