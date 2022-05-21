# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

User.destroy_all
Boat.destroy_all
Booking.destroy_all

puts 'Creating 20 fake users...'
20.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "1234password",
    password_confirmation: "1234password",
    name: Faker::Name.name
  )
  puts "boat with id #{user.id} saved"
end

User.all.each do |user|
  puts 'Creating 100 fake boats...'
  5.times do
    boat = Boat.create!(
      name: Faker::Commerce.product_name,
      category: ["Party", "Yacht", "Fishing"].sample,
      capacity: (0..500).to_a.sample,
      price: Faker::Commerce.price(range: 10..10_000.0),
      user: user
    )
    puts "Boat with id #{boat.id} saved"
  end
end

puts 'Creating 25 fake bookings...'
25.times do
  user = User.all.sample
  boat = Boat.where.not(user: user).sample
  booking = Booking.create!(
    start_date: Date.today,
    end_date: Date.today + 5.days,
    user: user,
    boat: boat
  )
  puts "booking with id #{booking.id} saved"
end
