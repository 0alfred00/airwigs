require "faker"
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do
#   User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     username: Faker::Internet.username,
#     address: Faker::Address.full_address
#   )
# end

# 10.times do
#   Offer.create!(
#    title: Faker::Commerce.product_name,
#     description: Faker::Lorem.paragraph_by_chars(number: 256),
#     color: Faker::Color.hex_color,
#     length: Faker::Number.between(from: 1, to: 100),
#     size: ["S", "M", "L"].sample,
#     style: Faker::Commerce.material,
#     user_id: User.all.sample.id
#   )
# end

# 10.times do
#    Booking.create!(
#     start_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
#     end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 7),
#     status: ["reserved", "pending", "booked"].sample,
#     user_id: User.all.sample.id,
#     offer_id: Offer.all.sample.id
#    )
#  end

# seed offers with bespoke images to cloudinary

offer1 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 156),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer1.photo.attach(io: File.open('app/assets/images/curly.png'), filename: 'curly.png', content_type: 'image/png')
offer1.save

offer2 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer2.photo.attach(io: File.open('app/assets/images/01.png'), filename: '01.png', content_type: 'image/png')
offer2.save

offer3 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer3.photo.attach(io: File.open('app/assets/images/02.png'), filename: '02.png', content_type: 'image/png')
offer3.save

offer4 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer4.photo.attach(io: File.open('app/assets/images/03.png'), filename: '03.png', content_type: 'image/png')
offer4.save

offer5 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer5.photo.attach(io: File.open('app/assets/images/04.png'), filename: '04.png', content_type: 'image/png')
offer5.save

offer6 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer6.photo.attach(io: File.open('app/assets/images/05.png'), filename: '05.png', content_type: 'image/png')
offer6.save

offer7 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer7.photo.attach(io: File.open('app/assets/images/06.png'), filename: '06.png', content_type: 'image/png')
offer7.save

offer8 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer8.photo.attach(io: File.open('app/assets/images/07.png'), filename: '07.png', content_type: 'image/png')
offer8.save

offer9 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer9.photo.attach(io: File.open('app/assets/images/08.png'), filename: '08.png', content_type: 'image/png')
offer9.save

offer10 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer10.photo.attach(io: File.open('app/assets/images/09.png'), filename: '09.png', content_type: 'image/png')
offer10.save

offer11 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer11.photo.attach(io: File.open('app/assets/images/10.png'), filename: '10.png', content_type: 'image/png')
offer11.save

offer12 = Offer.new(
  title: Faker::Commerce.product_name,
  description: Faker::Lorem.paragraph_by_chars(number: 56),
  color: Faker::Color.hex_color,
  length: Faker::Number.between(from: 1, to: 100),
  size: ["S", "M", "L"].sample,
  style: Faker::Commerce.material,
  user_id: User.all.sample.id
)
offer12.photo.attach(io: File.open('app/assets/images/11.png'), filename: '11.png', content_type: 'image/png')
offer12.save
