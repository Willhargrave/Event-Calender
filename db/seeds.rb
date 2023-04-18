# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Plan.create(user_id: 1, name: "Workout", description: "Cardio and strength training", date: Date.today, time: Time.new(2023, 4, 18, 14, 30))
Plan.create(user_id: 1, name: "Grocery shopping", description: "Buy groceries for the week", date: Date.tomorrow, time: Time.new(2023, 4, 19, 10, 0))
Plan.create(user_id: 2, name: "Meeting with clients", description: "Discuss new project requirements", date: Date.today, time: Time.new(2023, 4, 18, 16, 0))
Plan.create(user_id: 2, name: "Dinner with friends", description: "Trying new Italian restaurant", date: Date.tomorrow, time: Time.new(2023, 4, 19, 19, 30))
Plan.create(user_id: 3, name: "Study group", description: "Preparing for exams", date: Date.today, time: Time.new(2023, 4, 18, 18, 0))
Plan.create(user_id: 3, name: "Volunteer work", description: "Helping at local shelter", date: Date.tomorrow, time: Time.new(2023, 4, 19, 13, 0))
