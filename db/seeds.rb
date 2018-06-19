# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sam = User.create(name: "Sam", email: "sam@nothing.com")
bart = User.create(name: "Bartholomew", email: "bart@hotmail.com")
donna = User.create(name: "Donna", email: "donna@hotmail.com")
sally = User.create(name: "Sally", email: "sally@hotmail.com")

sam_general = Resume.create(title: "Sam's Gen", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Resume.pdf/page1-463px-Resume.pdf.jpg", industry: "general", user: sam)
sam_tech = Resume.create(title: "Sam's Tech Res", image_url: "https://resume-templates.me/wp-content/uploads/2018/05/8a3951008e2b697f3e9ca1b33673fc24.jpeg", industry: "technology", user: sam)
donna_general = Resume.create(title: "Anna Final Resume", image_url: "https://resume-templates.me/wp-content/uploads/2018/05/9ec25cd11f67f2c64234e4a496096a73.gif", industry: "professional services", user: donna)

bart_comment = Comment.create(resume: sam_general, poster: bart, content: "I'm a little teapot")
sally_comment = Comment.create(resume: sam_general, poster: sally, content: "Could use more...mojo")
bart_comment2 = Comment.create(resume: donna_general, poster: bart, content: "Great Res!")
