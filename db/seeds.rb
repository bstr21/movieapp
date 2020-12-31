# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Service.create(name: 'Netflix')
Service.create(name: 'AmazonPrime')
Service.create(name: 'other')
User.create!(name:  "管理者",
             email: "satoru.bstr@gmail.com",
             password:  "satoru0195BABA",
             password_confirmation: "satoru0195BABA",
             admin: true)
