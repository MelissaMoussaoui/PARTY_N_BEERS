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
Users.destroy_all

puts "Creating users..."
maeva = { first_name: "Maeva", last_name: "Ghennam", gender: "F", phone_number:"0654566787", date_of_birth: "14/05/1997" }
nabilla = { first_name: "Nabilla", last_name: "Vergara", gender: "F", phone_number:"0612234345", date_of_birth: "05/02/1992" }
jessi = { first_name: "Jessica", last_name: "Errero", gender: "F", phone_number: "0689879890", date_of_birth: "01/08/1993" }

[maeva, nabilla, jessi].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.name}"
end
puts "Finished!"

puts "Cleaning database..."
Party_flats.destroy_all

puts "Creating flats..."
paris = { locatisation: "32 Rue Beauregard, 75002, Paris", people_capacity: 25, surface: 100, description: "Magnifique appartement en plein centre de Paris", bed_capacity: 6 , number_of_room: 3, picture_url: "https://www.book-a-flat.com/magazine/fr/terrasses-appartements-paris#jp-carousel-1918", agrement_list: "cuisine, wifi, terrasse, jaccuzzi, sono, stromboscope, pas de limite d'heure, tireuse à bière", id_users: 1 }
loft = { locatisation: "16 Villa Gaudelet, 75011, Paris", people_capacity: 170, surface: 4, description: "Superbe loft avec piscine en plein Paris", bed_capacity: 20, number_of_room: 5, picture_url: "https://www.notreloft.com/images/2018/12/loft-industriel-brique-parquet-00100-1500x1003.jpg", agrement_list: "cuisine, wifi, espace extérieur, piscine, sono, stromboscope, pas de voisinage, parking, tennis", id_users: 2 }
penthouse = { locatisation: "35 Rue Pablo Picasso, 92000, Nanterre", people_capacity: 120, surface: 400, description: "Incroyable Penthouse avec tennis à Nanterre", bed_capacity: 36, number_of_room: 12, picture_url: "https://assets-news.housing.com/news/wp-content/uploads/2021/09/08210220/What-are-penthouses-and-how-popular-are-they-in-India-shutterstock_1595790271.jpg", agrement_list: "espace extérieur, piscine, sono, stromboscope, pas de limite d'heure, tireuse à bière", id_users: 3 }

[paris, loft, penthouse].each do |attributes|
  party_flat = Party_flat.create!(attributes)
  puts "Created #{party_flat.name}"
end
puts "Finished!"

puts "Cleaning database..."
Bookings.destroy_all

puts "Creating bookings..."
maeva_booking = { start_date: "Maeva", end_date: "Ghennam", id_users: 1, id_partys: 1 }
nabilla_booking = { start_date: "Nabilla", end_date: "Vergara", id_users: 2, id_partys: 2 }
jessi_booking = { start_date: "Jessica", end_date: "Errero", id_users: 3, id_partys: 3 }

[maeva_booking, nabilla_booking, jessi_booking].each do |attributes|
  booking = Booking.create!(attributes)
  puts "Created #{booking.name}"
end
puts "Finished!"
