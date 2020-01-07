# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: "user",
    email: "user@example.com",
    password: "aaaaaa",
    password_confirmation: 'aaaaaa',
    admin: true)

20.times do |i|
    i += 2
    User.create(
        name: "user#{i}",
        email: "user#{i}@example.com",
        password: "aaaaaa",
        password_confirmation: 'aaaaaa',
        admin: false)
end

10.times do |i|
    i += 2
    Thread1.create(
        name: "#{i}",
        description: "昨日の風呂の時間は#{i}分だった",
        user_id: i)
end