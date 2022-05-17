# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#require "faker"

  
user1 = User.create!(
  full_name: 'Kalolo Lemba',
  email: 'kalololemba@gmail.com',
  username: 'KingKaylo',
  password: '123456'
)


user2 = User.create!(
  full_name: 'Ben King',
  email: 'ben@gmail.com',
  username: 'ben',
  password: '123456'
)

course1 = Course.create(
    title: 'Ruby on Rails',
    description: 'Learn Ruby on Rails and become a full stack developer',
    category: 'Web Development',
    duration: '300',
    photo: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ADevicon-ruby-plain-wordmark.svg&psig=AOvVaw1YHCNwo37ZLbQD01-BQ1tf&ust=1652868335117000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCKiVlci_5vcCFQAAAAAdAAAAABAD',
    price: '1000'
  )