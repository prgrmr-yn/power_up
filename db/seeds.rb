# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cl_images = ["https://res.cloudinary.com/drjspypyq/image/upload/v1670315676/download_1_lwnvff.jpg", 'https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/download_k0lzed.jpg',
  "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/powerbank_pink_zzjehg.jpg", "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/powerbank_blue_nqa2yb.jpg", "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/images_w2foho.jpg",
  "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/images_3_hpsqf3.jpg",
  "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/images_2_snqdxv.jpg",
  "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/images_4_zqdjeu.jpg",
  "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/powerbank_pink_zzjehg.jpg",
  "https://res.cloudinary.com/drjspypyq/image/upload/v1670315675/images_4_zqdjeu.jpg",

""]
require 'open-uri'


puts "resetting database..."
print `rails db:drop`
puts "Database resetted"
puts "Creating database"
print `rails db:create`
puts "Databse created"
print `rails db:migrate`

puts "Creating users..."
User.create(username: "stephen", email: "stephen@test.com", password: "123456")
User.create(username: "demi", email: "demi@test.com", password: "123456")
User.create(username: "yatin", email: "yatin@test.com", password: "123456")
User.create(username: "pizza", email: "pizza@pasta.com", password: "123456")
puts 'Users created'

puts "Creating powerbanks"
<<<<<<< HEAD
Powerbank.create(user_id: 1, name:"Anker PowerCore Fusion", description: "5000mAh", availability: true, price: 10, accessories: "USB, USB-C", latitude: -37.899684, longitude: 145.0937182)
Powerbank.create(user_id: 1, name:"Anker PowerCore Fusion", description: "5000mAh", availability: true, price: 10, accessories: "USB, USB-C", latitude: -39, longitude: 145)
Powerbank.create(user_id: 1, name:"Nimble Champ Lite", description: "Portable Charger", availability: true, price: 20, accessories: "USB-C", latitude: -40, longitude: 146)
Powerbank.create(user_id: 1, name:"Nimble Champ Lite", description: "Portable Charger", availability: true, price: 20, accessories: "USB-C", latitude: -33, longitude: 145.1245541)
Powerbank.create(user_id: 2, name:"Belkin Boostup", description: "5500mAh", availability: true, price: 15, accessories: "Charger", latitude: -41, longitude: 145.1245541)
Powerbank.create(user_id: 2, name:"Belkin Boostup", description: "5500mAh", availability: true, price: 15, accessories: "Charger", latitude: -38.7275902, longitude: 139.213)
Powerbank.create(user_id: 2, name:"Belkin Boostup", description: "5500mAh", availability: true, price: 15, accessories: "Charger", latitude: -35.7275902, longitude: 143.1245541)
Powerbank.create(user_id: 3, name:"Mipow Miffy", description: "20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable", latitude: -37.7275902, longitude: 145.1245541)
Powerbank.create(user_id: 3, name:"Mipow Miffy", description: "20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable", latitude: -33.7275902, longitude: 147.1245541)
Powerbank.create(user_id: 3, name:"Mipow Miffy", description: "20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable", latitude: -34.7275902, longitude: 144.1245541)
Powerbank.create(user_id: 3, name:"Nimble Champ Lite", description: "Portable Charger", availability: true, price: 20, accessories: "USB-C", latitude: -32.7275902, longitude: 149.1245541)
=======
powerbanks_name = ["Anker PowerCore Fusion", "Anker Ultra Fusion", "Nimble Champ Lite", "Nimble Champ Heavy Duty", "AnkFusion", "Belkin Boostup", "Mipow Miffy"]
powerbanks_acc = ["USB, USB-C", 'Case', 'Charging cable', 'Lightening cable']

10.times do |i|
  file = URI.open(cl_images[i])
  p1 = Powerbank.new(user_id: rand(1..4), name: powerbanks_name.sample, description: "#{rand(1..5)}000mAh", availability: true, price: rand(20..50), accessories: powerbanks_acc.sample)
  p1.photo.attach(io: file, filename: 'p1.png', content_type: 'image/png')
  p1.save!
  puts "Powerbank with id #{p1.id} has been created"
end
>>>>>>> master


puts "Creating bookings..."
Booking.create(user_id: 3, powerbank_id: 2, start_date: "2021-12-06", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 2, powerbank_id: 1, start_date: "2021-12-06", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 3, powerbank_id: 3, start_date: "2021-12-06", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 2, powerbank_id: 4, start_date: "2021-12-06", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 1, powerbank_id: 4, start_date: "2021-12-06", end_date: "2021-12-03", total_cost: 10, status: "Pending")
puts 'Booking created'
