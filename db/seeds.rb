# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "resetting database"
User.destroy_all
Powerbank.destroy_all

puts "Creating users..."
User.create(username: "stephen", email: "stephen@test.com", password: "123456")
User.create(username: "demi", email: "demi@test.com", password: "123456")
User.create(username: "yatin", email: "yatin@test.com", password: "123456")


puts "Creating powerbanks"
Powerbank.create(user_id: 1, description: "Anker PowerCore Fusion 5000mAh", availability: true, price: 10, accessories: "USB, USB-C")
Powerbank.create(user_id: 2, description: "Belkin Boostup 5500mAh", availability: true, price: 15, accessories: "Charger")
Powerbank.create(user_id: 3, description: "Mipow Miffy 20W Power Bank", availability: true, price: 5, accessories: "Lightning Cable")
Powerbank.create(user_id: 3, description: "Nimble Champ Lite Portable Charger", availability: true, price: 20, accessories: "USB-C")
