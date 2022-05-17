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
    duration: 300,
    photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Devicon-ruby-plain-wordmark.svg/512px-Devicon-ruby-plain-wordmark.svg.png?20190106214356',
    price: 1000
  )

  course2 = Course.create(
    title: 'JavaScript',
    description: 'Learn JavaScript and become a front-end developer',
    category: 'Web Development',
    duration: 400,
    photo: 'https://pngset.com/images/library-of-javascript-icon-graphic-freeuse-files-logo-logo-javascript-icon-in-number-symbol-text-first-aid-transparent-png-1497709.png',
    price: 2000
  )

  course3 = Course.create(
    title: 'Python',
    description: 'Learn Python and become a back-end developer',
    category: 'Web Development',
    duration: 500,
    photo: 'https://pngset.com/images/python-logo-text-number-symbol-alphabet-transparent-png-95398.png',
    price: 3000
  )

  course4 = Course.create(
    title: 'React',
    description: 'Learn React and become a front-end developer',
    category: 'Web Development',
    duration: 600,
    photo: 'https://www.vhv.rs/dpng/d/524-5245981_react-js-logo-png-transparent-png-download.png',
    price: 4000
  )

  course5 = Course.create(
    title: 'Vue',
    description: 'Learn Vue and become a front-end developer',
    category: 'Web Development',
    duration: 700,
    photo: 'https://masteringjs.io/assets/images/vue/vue-transparent.png',
    price: 5000
  )

  reservation1 = Reservation.create(
    reserve_date: '2020-05-10',
    duration: 50,
    user_id: user1.id,
    course_id: course1.id
  )

  reservation2 = Reservation.create(
    reserve_date: '2020-05-10',
    duration: 50,
    user_id: user2.id,
    course_id: course2.id
  )

  reservation3 = Reservation.create(
    reserve_date: '2020-05-15',
    duration: 50,
    user_id: user1.id,
    course_id: course5.id
  )

  reservation4 = Reservation.create(
    reserve_date: '2020-05-30',
    duration: 50,
    user_id: user2.id,
    course_id: course3.id
  )

start_date1 = StartDate.create(
  start_date: '2020-05-10',
  course_id: course1.id
)

start_date2 = StartDate.create(
  start_date: '2020-05-11',
  course_id: course2.id
)

start_date3 = StartDate.create(
  start_date: '2020-05-12',
  course_id: course3.id
)

start_date4 = StartDate.create(
  start_date: '2020-05-13',
  course_id: course4.id
)

start_date5 = StartDate.create(
  start_date: '2020-05-14',
  course_id: course5.id
)

start_date6 = StartDate.create(
  start_date: '2020-05-30',
  course_id: course1.id
)


start_date7 = StartDate.create(
  start_date: '2020-05-28',
  course_id: course3.id
)
