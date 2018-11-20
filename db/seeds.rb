# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ first_name: 'Star Wars' }, { first_name: 'Lord of the Rings' }])
#   Character.create(first_name: 'Luke', movie: movies.first)

#  Proper seeding with Faker TBD

# require 'faker'
puts "Destroy all"
User.destroy_all
Machine.destroy_all
Booking.destroy_all

puts "Creating Users"

user_id = 1
machine_id = 1

10.times do
  User.create(first_name: Faker::Name.name)
  Machine.create(user_id: user_id, name: Faker::FunnyName.name, sock_count: Faker::Number.number(2), location: Faker::Address.street_name, availability: Faker::Number.number(2), price: Faker::Number.number(2))
  Booking.create(user_id: user_id, machine_id: machine_id, dates: Faker::Date.forward(23), price: Faker::Number.number(2), status: "pending")

  user_id += 1
  machine_id += 1

end

puts "Creating Machines"




# Machine.create(user_id: 1, name: "machine 1", sock_count: 10, location: "location 1", availability: 5, price: 10)
# Machine.create(user_id: 2, name: "machine 2", sock_count: 20, location: "location 2", availability: 5, price: 10)
# Machine.create(user_id: 3, name: "machine 3", sock_count: 30, location: "location 3", availability: 5, price: 10)
# Machine.create(user_id: 5, name: "machine 4", sock_count: 40, location: "location 4", availability: 5, price: 10)
# Machine.create(user_id: 8, name: "machine 5", sock_count: 50, location: "location 5", availability: 5, price: 10)
# Machine.create(user_id: 5, name: "machine 6", sock_count: 60, location: "location 6", availability: 5, price: 10)
# Machine.create(user_id: 4, name: "machine 7", sock_count: 70, location: "location 7", availability: 5, price: 10)
# Machine.create(user_id: 6, name: "machine 8", sock_count: 80, location: "location 8", availability: 5, price: 10)
# Machine.create(user_id: 7, name: "machine 9", sock_count: 90, location: "location 9", availability: 5, price: 10)
# Machine.create(user_id: 1, name: "machine 10", sock_count: 100, location: "location 10", availability: 5, price: 10)

# User.create(first_name: "Paul")
# User.create(first_name: "Seb")
# User.create(first_name: "Jack")
# User.create(first_name: "Henry")

puts "Creating Orders"

# Booking.create(user_id: 1, machine_id: 1, dates: "10/10/2018", price: 10, status: "pending")
# Booking.create(user_id: 2, machine_id: 2, dates: "11/11/2018", price: 100, status: "confirmed")
# Booking.create(user_id: 3, machine_id: 3, dates: "12/12/2018", price: 30, status: "cancelled")
# Booking.create(user_id: 4, machine_id: 4, dates: "09/09/2018", price: 50, status: "pending")
# Booking.create(user_id: 5, machine_id: 5, dates: "08/08/2018", price: 70, status: "pending")


puts "Finished!"

