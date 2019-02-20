# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant.destroy_all
# restaurants = Restaurant.create([
#   { name: "Ollie's", address:"526 E Mcdowell Rd Phoenix, AZ" category: "french"},
#   { name: "J&A", address: "4 Sutton Lane London, EC1M 5PU", phone_number: "0207 490 2992" category: "belgian" },
#   { name: "Red Dragon", address: "86 Mile End Rd, Stepney Green, London E1 4UN", category: "japanese" },
#   { name: "Red Dragon", address: "86 Mile End Rd, Stepney Green, London E1 4UN", category: "japanese" },

# ])
puts "starting seed..."
Restaurant.destroy_all

categories = %w(chinese italian japanese french belgian)
5.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: categories.sample)
end

puts "ending seed"
