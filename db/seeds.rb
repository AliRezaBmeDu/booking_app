# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user_1 = User.create(name: 'Harry', age: 20, photo: 'harry.jpg', email: 'harry@gmail.com', password: '123456')
user_2 = User.create(name: 'Gary', age: 30, photo: 'gary.jpg', email: 'gary@gmail.com', password: '123456')

post_1 = Post.create(user: user_1, title: 'First', content: 'Hello World!')
post_2 = Post.create(user: user_2, title: 'Second', content: 'Hello BD')

puts 'seed data created successfully'