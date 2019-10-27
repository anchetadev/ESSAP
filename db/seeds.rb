# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Angel Ancheta", email:"angel@email.com", password:"asdasdasd", major:"computer science", stage:"applying", degree:"bachelors",mentor_id: 1 )
User.create(name:"Kayla Downs", email:"kayla@email.com", password:"asdasdasd", major:"engineering", stage:"applying", degree:"bachelors",mentor_id: 2 )
Mentor.create(name:"Jill Humphries", email:"jill@email.com", password:"asdasdasd", admin:true)
Mentor.create(name:"Jill Humphries", email:"jill@email.com", password:"asdasdasd", admin:false)
Feedback.create(note:"Having a great time", date: "1/1/2019", user_id: 1)