# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Seeding Users...")
u1 = User.create!(username: "london_rosemary", email: "london.rosemary@gmail.com", password: "squilliam123", image_url: "https://static.vecteezy.com/system/resources/previews/002/406/166/non_2x/cute-cartoon-alligator-for-kids-vector.jpg")
puts("Seeding Pets...")
p1 = Pet.create!(name:"King K. Rool", happiness: 65, health: 100, hunger: 60, thirst: 60, boredom: 40, user_id: u1.id)
puts("Seeding complete!")