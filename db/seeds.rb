# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!({
#     email: ENV.fetch('USER_EMAIL'),
#     password: ENV.fetch('USER_PASSWORD')
# }) { |u| p u.encrypted_password }

user = User.create!({
    email: "example@example.com",
    password: "password123",
}) { |u| p u.encrypted_password }

Image.create!([
    image_data: "http://static.wixstatic.com/media/9059c663ff406ee7a8cc4b8b2048c783.jpg/v1/fill/w_784,h_523,al_c,q_90,usm_0.66_1.00_0.01/9059c663ff406ee7a8cc4b8b2048c783.webp",
    description: "A Siberian Husky",
    user: user
]) { |i| p i.user }