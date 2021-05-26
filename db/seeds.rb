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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+32 475 42 42 42", category: 'chinese' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E3 6PQ", phone_number: "+32 475 42 42 43", category: 'italian' }
mc_do =  { name: "Mac Donalds", address: "56A Shoreditch High St, London E4 6PQ", phone_number: "+32 475 42 42 44", category: 'japanese' }
burger_king =  { name: "Burger King", address: "56A Shoreditch High St, London E5 6PQ", phone_number: "+32 475 45 42 42", category: 'french' }
five_guys =  { name: "Five Guys", address: "56A Shoreditch High St, London E7 6PQ", phone_number: "+32 475 46 42 42", category: 'belgian' }
quick =  { name: "Quick", address: "56A Shoreditch High St, London E7 6PQ", phone_number: "+32 475 42 47 42", category: 'belgian' }


[ dishoom, pizza_east, mc_do, burger_king, five_guys, quick].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
