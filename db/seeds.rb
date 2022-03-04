# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
matsuri =  { name: "Matsuri", address: "10 avenue Paul-Doumer, 75116 Paris", category: "japanese" }
stella =  { name: "Stella", address: "50 rue de la Pompe, 75116 Paris", category: "french" }
framboise =  { name: "Creperie Framboise", address: "Place Costa-Rica, 75016 Paris", category: "belgian" }

[ dishoom, pizza_east, matsuri, stella, framboise ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
