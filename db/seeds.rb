# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'test1', email: 'test1@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(first_name: 'test2', email: 'test2@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(first_name: 'test3', email: 'test3@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(first_name: 'test4', email: 'test4@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(first_name: 'test5', email: 'test5@gmail.com', password: 'test123', password_confirmation: 'test123')
User.create(first_name: 'test6', email: 'test6@gmail.com', password: 'test123', password_confirmation: 'test123')

puts 'Users created'