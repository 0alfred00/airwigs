require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    username: Faker::Internet.username,
    address: Faker::Address.full_address
  )
end

10.times do
  Offer.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256),
    color: Faker::Color.hex_color,
    length: Faker::Number.between(from: 1, to: 100),
    size: ["S", "M", "L"].sample,
    style: Faker::Commerce.material,
    user_id: User.all.sample.id
  )
end

# 10.times do
#   Booking.create!(
#     start_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
#     end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 7),
#     status: ["reserved", "pending", "booked"].sample,
#     user_id: User.all.sample.id,
#     offer_id: Offer.all.sample.id
#   )
# end
