# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
    title: 'Web Developer',
    description: 'Become a Certified HTML, CSS, JavaScript Web Developer. Complete coverage of HTML, CSS, Javascript while you Earn Four Respected Certifications. Over 25 Engaging Lab Exercises. Server Side Development with PHP. Dozens of Code Examples to Download and Study. Client Side Programming with Javascript. Learn Database Development with mySQL.',
    category: 'Web Development',
    duration: 50,
    photo: 'https://images.unsplash.com/photo-1590608897129-79da98d15969?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    price: 120
  )

  course2 = Course.create(
    title: 'Fullstack Web Developer',
    description: 'The Complete 2022 Fullstack Web Developer Course. Learn HTML5, CSS3, JavaScript, Python, Wagtail CMS, PHP & MySQL from scratch! Learn Python from beginner to advanced. Wagtail Pythons top Content Management System (Like WordPress, but better). Lots of projects, big and small! Build a Login/Registration/Members-only website, just like Facebook. Learn the LAMP Stack: Linux, Apache, PHP and MySQL.',
    category: 'Web Development',
    duration: 120,
    photo: 'https://images.unsplash.com/photo-1565106430482-8f6e74349ca1?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    price: 200
  )

  course3 = Course.create(
    title: 'Advanced Javascript',
    description: 'In only seven hours you will learn enough javascript to transform from a Junior JS Dev into a Senior JS Guru. Impress interviewers with knowledge about advanced JavaScript features. Pass stage one JavaScript telephone interviews. Confidently Interview other JavaScript candidates. Prepare for working on complex frontend frameworks like React, Vue, Svelte or Angular.',
    category: 'Web Development',
    duration: 10,
    photo: 'https://images.unsplash.com/photo-1583508915901-b5f84c1dcde1?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    price: 40
  )

  course4 = Course.create(
    title: 'Data Analysis',
    description: 'Statistics / Data Analysis in SPSS: Inferential Statistics. Increase Your Data Analytic Skills – Highly Valued And Sought After By Employers. In this course, you will gain proficiency in how to analyze a number of statistical procedures in SPSS. Learn how to write the results of statistical analyses using APA format. You will learn how to interpret the output of a number of different statistical tests.',
    category: 'Data Science',
    duration: 12,
    photo: 'https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    price: 45
  )

  course5 = Course.create(
    title: 'Introduction to NLP',
    description: 'Introduction to Natural Language Processing (NLP). Work with text data using the Natural Language Tool Kit. Analyze text to discover, sentiment, important key words, and statistics. Load and manipulate custom text data. As a student of this course, you will get updates for free, which include lecture revisions, new code examples, and new data projects.',
    category: 'Data Science',
    duration: 20,
    photo: 'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    price: 50
  )

  course6 = Course.create(
    title: 'Mobile Developer',
    description: 'Objective-C Crash Course for Swift Developers. Write code in Objective-C. Convert Objective-C iOS Apps into Swift. Communicate between iOS apps and Servers. Convert Swift iOS Apps into Objective-C. Build Simple Node & Express Servers and APIs. This course is designed for iOS developers who only know Swift.',
    category: 'Mobile Development',
    duration: 40,
    photo: 'https://images.unsplash.com/photo-1593720213428-28a5b9e94613?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
    price: 110
  )

  reservation1 = Reservation.create(
    reserve_date: '2020-05-24',
    duration: 50,
    user_id: user1.id,
    course_id: course1.id
  )

  reservation2 = Reservation.create(
    reserve_date: '2020-06-03',
    duration: 120,
    user_id: user2.id,
    course_id: course2.id
  )

  reservation3 = Reservation.create(
    reserve_date: '2020-07-12',
    duration: 20,
    user_id: user1.id,
    course_id: course5.id
  )

  reservation4 = Reservation.create(
    reserve_date: '2020-08-10',
    duration: 10,
    user_id: user2.id,
    course_id: course3.id
  )

  reservation5 = Reservation.create(
    reserve_date: '2020-07-24',
    duration: 12,
    user_id: user2.id,
    course_id: course4.id
  )

  reservation6 = Reservation.create(
    reserve_date: '2020-06-20',
    duration: 40,
    user_id: user1.id,
    course_id: course6.id
  )

start_date1 = StartDate.create(
  start_date: '2020-05-24',
  course_id: course1.id
)

start_date2 = StartDate.create(
  start_date: '2020-06-03',
  course_id: course2.id
)

start_date3 = StartDate.create(
  start_date: '2020-08-10',
  course_id: course3.id
)

start_date4 = StartDate.create(
  start_date: '2020-07-24',
  course_id: course4.id
)

start_date5 = StartDate.create(
  start_date: '2020-07-12',
  course_id: course5.id
)

start_date8 = StartDate.create(
  start_date: '2020-06-20',
  course_id: course6.id
)

start_date6 = StartDate.create(
  start_date: '2020-06-20',
  course_id: course1.id
)


start_date7 = StartDate.create(
  start_date: '2020-09-10',
  course_id: course3.id
)