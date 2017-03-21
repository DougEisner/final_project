# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  Product.find_or_create_by(
  title: "Title ##{n}",
  developer: "Person",
  email: "email@mail.com",
  institution: "School",
  category: "chemistry",
  price: 100.99,
  summary: "Ipsum Lorem Ipsum Lorem",
  detailed_description: "Stuff stuff stuff details details description"
  )
end
