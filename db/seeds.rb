# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0772039483", category: "japanese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St", phone_number: "07720334553", category: "italian" }
franco = { name: "Franco", address: "8 Boundary St, London E2 7JE", phone_number: "07233948334", category: "italian" }
nandos = { name: "Nandos", address: "9 Boundary St, London E2 7JE", phone_number: "0896847332", category: "french" }
hawksmoor = { name: "Hawksmoor", address: "10 Boundary St, London E2 7JE", phone_number: "083729983", category: "chinese" }

[dishoom, pizza_east, franco, nandos, hawksmoor].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
