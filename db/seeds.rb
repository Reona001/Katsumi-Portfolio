
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database"
Message.destroy_all
RoomMessage.destroy_all
# Destination.destroy_all
# Chatroom.destroy_all
Experience.destroy_all
Experience.reset_pk_sequence
Post.reset_pk_sequence
Post.destroy_all
Blogpost.reset_pk_sequence
Blogpost.destroy_all
Project.destroy_all
User.destroy_all

reona = User.create!(
  username: "Reona",
  email: "rkasuya12@gmail.com",
  password: "123456"
)

bob = User.create!(
  username: "bob",
  email: "bob@gmail.com",
  password: "123456"
)


Project.create!(
  user: reona,
  title: "Colabo",
  created: "January 20th 2022",
  created_by: "Team including Byron, Erika, Babin, Reona",
  stack_used: "Ruby on Rails, Javascript",
  description: "Colabo is a platform that helps bring together
   socially responsible business owners and individuals interested
    in contributing to their community. Business owners can create social event
    postings that individuals can sign up to. The platform is made to encourage everyone to
    help make their community better. Business owners can set rewards such as merchandise or coupons.
    contributors to these social events will receive rewards in exchange for their social work, Colabo
    provides a great incentive for both individuals and business owners to give back to their community.
    ",
  url: "https://colabo-social.herokuapp.com/",
  git_repo_url: "https://github.com/RBBE-corp/colabo"
)

Project.create!(
  user: reona,
  title: "TwoByFour",
  created: "February 15th 2022",
  created_by: "Team including Byron, Erika, Babin, Reona",
  stack_used: "Ruby on Rails, Javascript, Google Cloud Audio Recognition",
  description: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. At perspiciatis modi cumque dolore maxime, harum doloribus autem nihil ab aut eos, deserunt qui eaque, beatae temporibus sed minima vero repudiandae?",
  url: "https://twobyfour-app.herokuapp.com/",
  git_repo_url: "https://github.com/RBBE-corp/twobyfour"
)

puts "Sample project created!"
puts "............."
puts "............."
puts "Database seeded!"
