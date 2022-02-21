# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database"
User.destroy_all
# Project.destroy_all

reona = User.create!(
  username: "Reona",
  email: "rkasuya12@gmail.com",
  password: "123456"
)

Project.create!(
  user: reona,
  title: "Colabo",
  created: "January 20th 2022",
  created_by: "Team including Byron, Erika, Babin, Reona",
  stack_used: "Ruby on Rails, Javascript",
  url: "https://colabo-social.herokuapp.com/",
  git_repo_url: "nil"
)

puts "Sample project created!"
puts "............."
puts "............."
puts "Database seeded!"
