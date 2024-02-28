# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'cleaning database...'

puts "creating retaurants..."
names = ["Finns", "Vibes", "Lou's Place", "Epic Food", "Dogs Breakfast"]
adds = ["8 lols road", "14 long street", "11 help avenue", "6 something road", "3 OK street"]
phones = ["082 3782 9321", "098 5673 0982", "026 9375 9846", "638 4859 3037", "378 6365 9026"]
cats = ["chinese", "italian", "japanese", "french", "belgian"]

index = 0

5.times do
  Restaurant.create(
    name: names[index],
    address: adds[index],
    phone_number: phones[index],
    category: cats[index]
  )
  index += 1
end
