# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(store: 'Tesco Extra', latitude: 51.449922, longitude: -2.602920, place_id: "ChIJwwnKZDyOcUgRZUtcXG0WDx8")
Location.create(store: 'Sainsbury\'s', latitude: 51.433757, longitude: -2.619230, place_id: "ChIJZdbApcKNcUgRkcMHU-IynM8")
Location.create(store: 'Asda', latitude: 51.443971 , longitude: -2.595187, place_id: "ChIJpb7T_SqMcUgR27iVPrStNjI")
admin = Admin.new({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'})
admin.save
product1 = Product.create(item:"Apple",picture:"apple.jpg",description: "An Apple a day keeps the doctor away!",packaging: "none",rating:4,plastic_free: true)
location1 = Location.first
location2 = Location.find(2)
location3 = Location.find(3)
product1.location_products.create(location: location3)
product2 = Product.create(item:"Peach",picture:"peach.jpg",description: "Millions of them and for free!",packaging: "none",rating:5,plastic_free: true)
product2.location_products.create(location: location1)
product2.location_products.create(location: location2)
product2.location_products.create(location: location3)
product3 = Product.create(item:"Pasta",picture:"pasta.jpg",description: "Staple food of Italy",packaging: "packet",rating:3,plastic_free: false)
product3.location_products.create(location: location1)
product3.location_products.create(location: location2)
