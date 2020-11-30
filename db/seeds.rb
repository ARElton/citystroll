# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Post.destroy_all 
City.destroy_all

10.times do 
    User.create(name: Faker::Games::Zelda.character, age: rand(10..100), username: Faker::JapaneseMedia::DragonBall.character, password: " " )
end

20.times do 
    City.create(name: Faker::Address.city, country: Faker::Address.country, population: rand(1000000..99999999999))
end

15.times do
    Post.create(title: "random" , user_id: User.all.sample.id, city_id: City.all.sample.id, link: "https://www.youtube.com/embed/i8s_T4NpBPs")
end

