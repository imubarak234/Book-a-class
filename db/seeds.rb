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

  course2 = Course.create(
    title: 'JavaScript',
    description: 'Learn JavaScript and become a front-end developer',
    category: 'Web Development',
    duration: '400',
    photo: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpngset.com%2Fdownload-free-png-efdei&psig=AOvVaw11wiqURoiQjnyYU_ShrUrt&ust=1652868441865000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLjW_YjA5vcCFQAAAAAdAAAAABAD',
    price: '2000'
  )

  course3 = Course.create(
    title: 'Python',
    description: 'Learn Python and become a back-end developer',
    category: 'Web Development',
    duration: '500',
    photo: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fflyclipart.com%2Fpython-logo-png-transparent-python-logo-images-python-logo-png-205864&psig=AOvVaw1XvksYI9HwvKqdxStJeyED&ust=1652868512306000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLjNtaHA5vcCFQAAAAAdAAAAABAO',
    price: '3000'
  )

  course4 = Course.create(
    title: 'React',
    description: 'Learn React and become a front-end developer',
    category: 'Web Development',
    duration: '600',
    photo: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fflyclipart.com%2Fsmartlogic-explores-javascript-react-and-flux-tech-logos-react-logo-png-221735&psig=AOvVaw0QpdCva1q3lwmtf2QARIzq&ust=1652868578384000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCND-y73A5vcCFQAAAAAdAAAAABAD',
    price: '4000'
  )
