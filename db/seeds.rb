# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
PartyFlat.destroy_all
User.destroy_all

puts "Creating users..."
maeva = { first_name: "Maeva", last_name: "Ghennam", gender: "F", phone_number:"0654566787", date_of_birth: "14/05/1997", email: "totu@gmail.com", password: "totu39" }
nabilla = { first_name: "Nabilla", last_name: "Vergara", gender: "F", phone_number:"0612234345", date_of_birth: "05/02/1992", email: "tota@gmail.com", password: "totu39"}
jessi = { first_name: "Jessica", last_name: "Errero", gender: "F", phone_number: "0689879890", date_of_birth: "01/08/1993",email: "toti@gmail.com", password: "totu39" }

[maeva, nabilla, jessi].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end
puts "Finished!"

puts "Cleaning database..."

puts "Creating flats..."
paris = { localisation: "32 Rue Beauregard, 75002, Paris", people_capacity: 25, surface: 100, description: "Magnifique appartement en plein centre de Paris", bed_capacity: 6 , number_of_room: 3, agrement_list: "cuisine, wifi, terrasse, jaccuzzi, sono, stromboscope, pas de limite d'heure, tireuse à bière", user_id: User.all.sample.id }
loft = { localisation: "16 Villa Gaudelet, 75011, Paris", people_capacity: 170, surface: 4, description: "Superbe loft avec piscine en plein Paris", bed_capacity: 20, number_of_room: 5, agrement_list: "cuisine, wifi, espace extérieur, piscine, sono, stromboscope, pas de voisinage, parking, tennis", user_id: User.all.sample.id}
penthouse = { localisation: "35 Rue Pablo Picasso, 92000, Nanterre", people_capacity: 120, surface: 400, description: "Incroyable Penthouse avec tennis à Nanterre", bed_capacity: 36, number_of_room: 12, agrement_list: "espace extérieur, piscine, sono, stromboscope, pas de limite d'heure, tireuse à bière", user_id: User.all.sample.id }

[paris, loft, penthouse].each do |attributes|
  party_flat = PartyFlat.create!(attributes)
  puts "Created #{party_flat.localisation}"
end
puts "Finished!"

puts "Cleaning database..."

puts "Creating bookings..."
maeva_booking = { start_date: "Maeva", end_date: "Ghennam", user_id: User.all.sample.id, party_flat_id: PartyFlat.all.sample.id }
nabilla_booking = { start_date: "Nabilla", end_date: "Vergara", user_id: User.all.sample.id, party_flat_id: PartyFlat.all.sample.id }
jessi_booking = { start_date: "Jessica", end_date: "Errero", user_id: User.all.sample.id, party_flat_id: PartyFlat.all.sample.id }

[maeva_booking, nabilla_booking, jessi_booking].each do |attributes|
  booking = Booking.create!(attributes)
  puts "Created #{booking.start_date}"
end
puts "Finished!"
