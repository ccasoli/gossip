# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    t = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: Faker::Number.within(range: 18..80), city_id: Faker::Number.within(range: 1..10))
end

10.times do
    t = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

20.times do
    t = AGossip.create(title: Faker::Games::Pokemon.name, content: Faker::Quote.yoda, user_id: Faker::Number.within(range: 1..10))
end

10.times do
    t = Tag.create(title: Faker::SlackEmoji.people)
end

50.times do
    t = JoinTagAGossip.create(tag_id: Faker::Number.within(range: 1..10), a_gossip_id: Faker::Number.within(range: 1..20))
end

100.times do 
    t = PrivateMessage.create(content: Faker::Color.color_name)
end
