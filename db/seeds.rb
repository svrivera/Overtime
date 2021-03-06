# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email:"mail@mail.com", password:"password", password_confirmation:"password", first_name:"John", last_name:"Doe")

100.times do |post|
    Post.create!(date: Date.today, rationale:"#{post} rationale content", user_id: user.id)
end

puts "100 posts have been created"
