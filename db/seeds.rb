# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"

User.destroy_all
Boat.destroy_all
Booking.destroy_all

puts 'Creating 20 fake users...'
user = User.create!(
  email: Faker::Internet.email,
  password: "1234password",
  password_confirmation: "1234password",
  name: Faker::Name.name
)
puts "boat with id #{user.id} saved"

# User.all.each do |user|
#   puts 'Creating 100 fake boats...'
#   5.times do
#     boat = Boat.create!(
#       name: Faker::Commerce.product_name,
#       category: ["Party", "Yacht", "Fishing"].sample,
#       capacity: (0..500).to_a.sample,
#       price: Faker::Commerce.price(range: 10..10_000.0),
#       user: user
#     )
#     puts "Boat with id #{boat.id} saved"
#   end
# end

# puts 'Creating 25 fake bookings...'
# 25.times do
#   user = User.all.sample
#   boat = Boat.where.not(user: user).sample
#   booking = Booking.create!(
#     start_date: Date.today,
#     end_date: Date.today + 5.days,
#     user: user,
#     boat: boat
#   )
#   puts "booking with id #{booking.id} saved"
# end
puts "creating 5 party boats"

party_boat_1 = Boat.create!(
  name: Faker::Space.nasa_space_craft,
  category: "Party",
  capacity: (15..80).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
party_boat_1.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614418/party_boat_1_c0kbu8.jpg"), filename: "#{party_boat_1.id}photo.jpg", content_type: 'image/jpg')

party_boat_2 = Boat.create!(
  name: Faker::Space.nasa_space_craft,
  category: "Party",
  capacity: (15..80).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
party_boat_2.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614417/party_boat_2_defeyn.jpg"), filename: "#{party_boat_2.id}photo.jpg", content_type: 'image/jpg')

party_boat_3 = Boat.create!(
  name: Faker::Space.nasa_space_craft,
  category: "Party",
  capacity: (15..80).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
party_boat_3.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614418/party_boat_3_t7xpwm.jpg"), filename: "#{party_boat_3.id}photo.jpg", content_type: 'image/jpg')

party_boat_4 = Boat.create!(
  name: Faker::Space.nasa_space_craft,
  category: "Party",
  capacity: (15..80).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
party_boat_4.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614417/party_boat_4_fyhvgk.jpg"), filename: "#{party_boat_4.id}photo.jpg", content_type: 'image/jpg')

party_boat_5 = Boat.create!(
  name: Faker::Space.nasa_space_craft,
  category: "Party",
  capacity: (15..80).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
party_boat_5.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614417/party_boat_5_jvsjco.jpg"), filename: "#{party_boat_5.id}photo.jpg", content_type: 'image/jpg')

puts "creating 5 fishing boats"

fishing_boat_1 = Boat.create!(
  name: Faker::Space.launch_vehicle,
  category: "Fishing",
  capacity: (5..20).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
fishing_boat_1.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614833/fishing_boat_1_zncbx8.jpg"), filename: "#{fishing_boat_1.id}photo.jpg", content_type: 'image/jpg')

fishing_boat_2 = Boat.create!(
  name: Faker::Space.launch_vehicle,
  category: "Fishing",
  capacity: (5..20).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
fishing_boat_2.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614833/fishing_boat_2_qbfuns.jpg"), filename: "#{fishing_boat_2.id}photo.jpg", content_type: 'image/jpg')

fishing_boat_3 = Boat.create!(
  name: Faker::Space.launch_vehicle,
  category: "Fishing",
  capacity: (5..20).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
fishing_boat_3.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614833/fishing_boat_3_yrxdbt.jpg"), filename: "#{fishing_boat_3.id}photo.jpg", content_type: 'image/jpg')

fishing_boat_4 = Boat.create!(
  name: Faker::Space.launch_vehicle,
  category: "Fishing",
  capacity: (5..20).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
fishing_boat_4.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614833/fishing_boat_4_ofag0q.jpg"), filename: "#{fishing_boat_4.id}photo.jpg", content_type: 'image/jpg')

fishing_boat_5 = Boat.create!(
  name: Faker::Space.launch_vehicle,
  category: "Fishing",
  capacity: (5..20).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
fishing_boat_5.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614833/fishing_boat_5_nq7vfi.jpg"), filename: "#{fishing_boat_5.id}photo.jpg", content_type: 'image/jpg')

puts "creating 5 yachts"

yacht_1 = Boat.create!(
  name: Faker::Space.meteorite,
  category: "Yacht",
  capacity: (8..30).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
yacht_1.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614834/yacht_1_rvzbda.jpg"), filename: "#{yacht_1.id}photo.jpg", content_type: 'image/jpg')

yacht_2 = Boat.create!(
  name: Faker::Space.meteorite,
  category: "Yacht",
  capacity: (8..30).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
yacht_2.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614834/yacht_2_odd2if.jpg"), filename: "#{yacht_2.id}photo.jpg", content_type: 'image/jpg')

yacht_3 = Boat.create!(
  name: Faker::Space.meteorite,
  category: "Yacht",
  capacity: (8..30).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
yacht_3.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614834/yacht_3_jcm9ps.jpg"), filename: "#{yacht_3.id}photo.jpg", content_type: 'image/jpg')

yacht_4 = Boat.create!(
  name: Faker::Space.meteorite,
  category: "Yacht",
  capacity: (8..30).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
yacht_4.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614834/yacht_4_nfwtgl.jpg"), filename: "#{yacht_4.id}photo.jpg", content_type: 'image/jpg')

yacht_5 = Boat.create!(
  name: Faker::Space.meteorite,
  category: "Yacht",
  capacity: (8..30).to_a.sample,
  price: Faker::Commerce.price(range: 10..10_000.0),
  user: user
)
yacht_5.photo.attach(io: URI.open("https://res.cloudinary.com/duqopwkea/image/upload/v1653614834/yacht_5_d68kne.jpg"), filename: "#{yacht_5.id}photo.jpg", content_type: 'image/jpg')
