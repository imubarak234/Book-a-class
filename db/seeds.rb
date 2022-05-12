# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

5.times do
  users = User.new(
    full_name: Faker::Name.name
  )
  users.save
end

15.times do
  course = Course.new(
    title: Faker::Educator.course_name,
    description: Faker::Lorem.paragraph(sentence_count: 10),
    category: Faker::Educator.subject,
    duration: Faker::Number.within(range: 4..30),
    photo: Faker::Internet.domain_name,
    user_id: Faker::Number.within(range: 1..5)
    price: Faker::Number.within(range: 100..650),
  )
  course.save
end

5.times do
  reservation = Reservation.new(
    reserve_date: Faker::Date.backward(days: 140),
    duration: Faker::Number.within(range: 4..30),
    user_id: Faker::Number.within(range: 1..5),
    course_id: Faker::Number.within(range: 1..15)
  )
  reservation.save
end

10.times do
  courses_users = CoursesUser.new(
    user_id: Faker::Number.within(range: 1..5),
    course_id: Faker::Number.within(range: 1..15)
  )
  courses_users.save
end

10.times do
  start_date = StartDate.new(
    start_date: Faker::Date.backward(days: 100),
    course_id: Faker::Number.within(range: 1..15)
  )
  start_date.save
end
