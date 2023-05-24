# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
dishoom = { name: 'Light and spacious', address: '10 Clifton gardens', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
pizza_east = { name: 'Pizza East', address: 'Mykonos', description: 'Towns',
               price_per_night: 68, number_of_guests: 3 }
bar_hop = { name: 'BarHop', address: 'New York', description: 'downtown', price_per_night: 60, number_of_guests: 3 }
troy =  { name: 'Troy', address: 'Sicilia', description: 'seaside', price_per_night: 72, number_of_guests: 3 }
darrens = { name: 'darrens', address: 'Barcelona', description: 'party town', price_per_night: 81, number_of_guests: 3 }

[dishoom, pizza_east, bar_hop, troy, darrens].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
