# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5, category: 'chinese', phone_number: '088 888 888' }
pizza_east = { name: "Pizza East", address: "Amsterdam 1", rating: 1, category: 'italian', phone_number: '088 888 888' }
pizza_west = { name: "Pizza West", address: "Amsterdam 2", rating: 2, category: 'chinese', phone_number: '088 888 888' }
pizza_north = { name: "Pizza East", address: "Amsterdam 3", rating: 3, category: 'chinese', phone_number: '088 888 888' }
pizza_south = { name: "Pizza South", address: "Amsterdam 4", rating: 4, category: 'chinese', phone_number: '088 888 888' }

puts "Creating reviews..."
good_review = { restaurant_id: 1, content: "This was goood", rating: 4 }
bad_review = { restaurant_id: 2, content: "This was baaad", rating: 4 }

[ dishoom, pizza_east, pizza_west, pizza_north, pizza_south ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

[ good_review ].each do |attributes|
  review = Review.create!(attributes)
  puts "Created reviews"
end
puts "Finished!"
