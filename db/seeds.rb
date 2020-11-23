# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

users = User.all
users.delete_all

articles = Article.all
articles.delete_all

3.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "azerty"
  )
end

10.times do 
  article = Article.create!(
    title: Faker::Game.title,
    content: Faker::Quote.famous_last_words,
    user_id: User.find(rand(User.first.id..User.last.id)).id
  )
end

puts "seed done"

