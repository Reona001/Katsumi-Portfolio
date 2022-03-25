
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
  password: "123456",
)

reona.photo.attach(io: File.open(Rails.root.join('app/assets/images/avatar_img.JPG')),
                  filename: 'avatar_img.JPG')


bob = User.create!(
  username: "bob",
  email: "bob@gmail.com",
  password: "123456"
)


colabo = Project.create!(
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
colabo.photo.attach(io: File.open(Rails.root.join('app/assets/images/colabo.png')),
                  filename: 'colabo.png')

twobyfour = Project.create!(
  user: reona,
  title: "TwoByFour",
  created: "February 15th 2022",
  created_by: "Team including Byron, Erika, Babin, Reona",
  stack_used: "Ruby on Rails, Javascript, Google Cloud Audio Recognition",
  description: "A memorization app that uses music to help users retain phrases.
  The first iteration of this application was designed for individuals struggling to
  memorize Japanese. Users can pick phrases they want to learn from a list of
  prerecorded audio files which contains both the English and Japanese audio.
  Users can combine these vocalized phrases with an instrumental of their liking to
  create a composition. The composition then can be played in loop so that the user
  can listen to the bilingual audio track and memorize the phrases.
  TwoByFour features a memory test which utilizes Google's Cloud Speech API to
  verify what the user is saying and provides a score for the user to keep
  track of their learning progress. Our team goal was to create an app that would make
  the process of learning more exciting and entertaining for any subject or language.
  The project gave me a great opportunity to work on backend involving audio files and a
  beautiful frontend featuring JavaScript libraries such as Sortable JS.",
  url: "https://twobyfour-app.herokuapp.com/",
  git_repo_url: "https://github.com/RBBE-corp/twobyfour"
)
twobyfour.photo.attach(io: File.open(Rails.root.join('app/assets/images/twobyfour.png')),
                  filename: 'twobyfour.png')

puts "Sample project created!"
puts "............."
puts "............."
puts "Database seeded!"
