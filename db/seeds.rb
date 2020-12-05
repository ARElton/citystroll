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

7.times do 
    User.create(name: Faker::Games::Zelda.character, age: rand(10..100), username: Faker::JapaneseMedia::DragonBall.character, password: "test123" )
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

Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Paris").id, link: "https://www.youtube.com/watch?v=ME2zyNBh3JM&t=2248s&ab_channel=ProwalkTours", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Delhi").id, link: "https://www.youtube.com/watch?v=o9-bTrr3qbY", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Shanghai").id, link: "https://www.youtube.com/watch?v=Y1iw8aTVXuY", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Tokyo").id, link: "https://www.youtube.com/watch?v=HYSMJ-lM2t0", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Istanbul").id, link: "https://www.youtube.com/watch?v=8mHuAfrtDNg", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Ho Chi Minh City").id, link: "https://www.youtube.com/watch?v=N0crXGYLYlg", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Austin").id, link: "https://www.youtube.com/watch?v=BCbAb4CzU14", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Caracas").id, link: "https://www.youtube.com/watch?v=08dTVkLqSL8", description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Saint Petersburg").id, link: "https://www.youtube.com/watch?v=8iSBVIHCRdc", description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Rome").id, link: "https://www.youtube.com/watch?v=2rjZXl3NmT8", description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Seoul").id, link: "https://www.youtube.com/watch?v=3P1CnWI62Ik&ab_channel=ImagineyourKorea", description: Faker::TvShows::TwinPeaks.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Denver").id, link: "https://www.youtube.com/watch?v=FBpll9xvjn8", description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "San Francisco").id, link: "https://www.youtube.com/watch?v=AIqlkQlIzCY", description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Austin").id, link: "https://www.youtube.com/watch?v=RLRnb84p3TM&ab_channel=IslandHopperTV", description: Faker::TvShows::TwinPeaks.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Copenhagen").id, link: "https://www.youtube.com/watch?v=Nl69sN5PtgM", description: Faker::TvShows::TwinPeaks.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Seoul").id, link: "https://www.youtube.com/watch?v=rHdRH0eDTos&ab_channel=SeoulWalker", description: Faker::TvShows::TwinPeaks.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Berlin").id, link: "https://www.youtube.com/watch?v=xGIBK3teEak", description: Faker::TvShows::TwinPeaks.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Berlin").id, link: "https://www.youtube.com/watch?v=F1K05Wv6CBo", description: Faker::TvShows::HeyArnold.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Bangkok").id, link: "https://www.youtube.com/watch?v=w_VcIjBnKeU", description: Faker::TvShows::HeyArnold.quote)
Post.create(title: Faker::Book.title, user_id: User.all.sample.id, city_id: City.find_by(name: "Barcelona").id, link: "https://www.youtube.com/watch?v=EGYXw3CwL-0", description: Faker::TvShows::HeyArnold.quote)



40.times do 
    Comment.create(user_id: User.all.sample.id, post_id: Post.all.sample.id, text: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
end



