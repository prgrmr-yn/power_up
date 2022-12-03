# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "resetting database"


puts "Creating users..."
User.create(username: "stephen", email: "stephen@test.com", password: "123456")
User.create(username: "demi", email: "demi@test.com", password: "123456")
User.create(username: "yatin", email: "yatin@test.com", password: "123456")




puts "Creating powerbanks"
Powerbank.create(user_id: 1, name:"Anker PowerCore Fusion", description: "5000mAh", availability: true, price: 10, accessories: "USB, USB-C")
Powerbank.create(user_id: 1, name:"Anker PowerCore Fusion", description: "5000mAh", availability: true, price: 10, accessories: "USB, USB-C")
Powerbank.create(user_id: 1, name:"Nimble Champ Lite", description: "Portable Charger", availability: true, price: 20, accessories: "USB-C")
Powerbank.create(user_id: 1, name:"Nimble Champ Lite", description: "Portable Charger", availability: true, price: 20, accessories: "USB-C")
Powerbank.create(user_id: 2, name:"Belkin Boostup", description: "5500mAh", availability: true, price: 15, accessories: "Charger")
Powerbank.create(user_id: 2, name:"Belkin Boostup", description: "5500mAh", availability: true, price: 15, accessories: "Charger")
Powerbank.create(user_id: 2, name:"Belkin Boostup", description: "5500mAh", availability: true, price: 15, accessories: "Charger")
Powerbank.create(user_id: 3, name:"Mipow Miffy", description: "20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable")
Powerbank.create(user_id: 3, name:"Mipow Miffy", description: "20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable")
Powerbank.create(user_id: 3, name:"Mipow Miffy", description: "20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable")
Powerbank.create(user_id: 3, name:"Nimble Champ Lite", description: "Portable Charger", availability: true, price: 20, accessories: "USB-C")


puts "Creating bookings..."
Booking.create(user_id: 3, powerbank_id: 2, start_date: "2021-12-02", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 2, powerbank_id: 1, start_date: "2021-12-02", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 3, powerbank_id: 3, start_date: "2021-12-02", end_date: "2021-12-03", total_cost: 10, status: "Pending")
Booking.create(user_id: 2, powerbank_id: 4, start_date: "2021-12-02", end_date: "2021-12-03", total_cost: 10, status: "Pending")
