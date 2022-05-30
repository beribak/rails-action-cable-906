# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

carolina = User.create!(email: "carolina@gmail.com", nickname: "Lilly", password: "111111")
eric = User.create!(email: "eric@gmail.com", nickname: "Stahl", password: "111111")

chatroom = Chatroom.create!()
