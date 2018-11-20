# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ first_name: 'Star Wars' }, { first_name: 'Lord of the Rings' }])
#   Character.create(first_name: 'Luke', movie: movies.first)

#  Proper seeding with Faker TBD

10.times do
  User.create(first_name: Faker::FunnyName)
end

Machine.create(name: "machine 1", sock_count: 10, location: "location 1", availability: 5, price: 10)
Machine.create(name: "machine 2", sock_count: 20, location: "location 2", availability: 5, price: 10)
Machine.create(name: "machine 3", sock_count: 30, location: "location 3", availability: 5, price: 10)
Machine.create(name: "machine 4", sock_count: 40, location: "location 4", availability: 5, price: 10)
Machine.create(name: "machine 5", sock_count: 50, location: "location 5", availability: 5, price: 10)
Machine.create(name: "machine 6", sock_count: 60, location: "location 6", availability: 5, price: 10)
Machine.create(name: "machine 7", sock_count: 70, location: "location 7", availability: 5, price: 10)
Machine.create(name: "machine 8", sock_count: 80, location: "location 8", availability: 5, price: 10)
Machine.create(name: "machine 9", sock_count: 90, location: "location 9", availability: 5, price: 10)
Machine.create(name: "machine 10", sock_count: 100, location: "location 10", availability: 5, price: 10)

# User.create(first_name: "Paul")
# User.create(first_name: "Seb")
# User.create(first_name: "Jack")
# User.create(first_name: "Henry")

Booking.create(dates: "10/10/2018", price: 10, status: "pending")
Booking.create(dates: "11/11/2018", price: 100, status: "confirmed")
Booking.create(dates: "12/12/2018", price: 30, status: "cancelled")
Booking.create(dates: "09/09/2018", price: 50, status: "pending")
Booking.create(dates: "08/08/2018", price: 70, status: "pending")




