# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0563487215", category: "italian")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0565349925", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Pizza Bonici", address: "5 rue de la fontaine 33240 St andre de Cubzac", phone_number: "0565349876", category: "french")
puts "Created Pizza Bonici"
Restaurant.create!(name: "Pizza de la mama", address: "7 rue des tronc 75000 Parus", phone_number: "0563425315", category: "italian")
puts "Pizza de la mama"
Restaurant.create!(name: "ICI'SUSHI", address: "5 rue de la fontaine 33240 st andre de cubzac", phone_number: "05527394051", category: "chinese")
puts "ICI'SUSHI"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."


# t.string "name"
#     t.string "address"
#     t.string "phone_number"
#     t.string "category"
