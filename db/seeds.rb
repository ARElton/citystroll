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
Comment.destroy_all

10.times do 
    User.create!(name: Faker::Games::Zelda.character, age: rand(10..100), username: Faker::JapaneseMedia::DragonBall.character, password: " " )
end

City.create(name: "Tokyo", country: "Japan", population: 37435191)
City.create(name: "Delhi", country: "India", population: 29399141)
City.create(name: "Shanghai", country: "China", population: 26317104)
City.create(name: "Sao Paulo", country: "Brazil", population: 21846507)
City.create(name: "Mexico City", country: "Mexico", population: 21671908)
City.create(name: "Istanbul", country: "Turkey", population: 15190336)
City.create(name: "Paris", country: "France", population: 11017230)
City.create(name: "Bangkok", country: "Thailand", population: 10539415)
City.create(name: "Seoul", country: "South Korea", population: 9963452)
City.create(name: "London", country: "United Kingdom", population: 9304016)
City.create(name: "Ho Chi Minh City", country: "Veitnam", population: 8602317)
City.create(name: "New York City", country: "United States", population: 8323340)
City.create(name: "Barcelona", country: "Spain", population: 5585556)
City.create(name: "Saint Petersburg", country: "Russia", population: 5467808)
City.create(name: "Addis Ababa", country: "Ethiopia", population: 4793699)
City.create(name: "Nairobi", country: "Kenya", population: 4734881)
City.create(name: "Cape Town", country: "South Africa", population: 4617560)
City.create(name: "Rome", country: "Italy", population: 4257056)
City.create(name: "Berlin", country: "Germany", population: 3562038)
City.create(name: "Caracas", country: "Venezuela", population: 2938992)
City.create(name: "Stockholm", country: "Sweden", population: 1632798)
City.create(name: "Copenhagen", country: "Denmark", population: 1346485)
City.create(name: "Austin", country: "United States", population: 988218)
City.create(name: "San Francisco", country: "United States", population: 896047)
City.create(name: "Denver", country: "United States", population: 734134) 

# 20.times do 
#     City.create!(name: Faker::Address.city, country: Faker::Address.country, population: rand(1000000..99999999999))
# end

16.times do
    Post.create!(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.all.sample.id, link: "https://www.youtube.com/watch?v=pRuLtyIEBDA")
end

30.times do 
    Comment.create(user_id: User.all.sample.id, post_id: Post.all.sample.id, text: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
end

