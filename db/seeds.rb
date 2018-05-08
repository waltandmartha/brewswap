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

# user = User.create!({
#     email: "example@example.com",
#     password: "password123",
#     password_confirmation: "password123",
#     admin: true
# }) { |u| p u.encrypted_password }

# profile = Profile.create!([
#     username: "beerlover",
#     bio: "Love lots of beer, happy to share and try new things",
#     location: "3001",
#     image_data: 
#     user_id: 1
#  ])   { |pr| p pr.user }

# post = Post.create!([
#     title: "Testing with seed",
#     image_data: "http://static.wixstatic.com/media/9059c663ff406ee7a8cc4b8b2048c783.jpg/v1/fill/w_784,h_523,al_c,q_90,usm_0.66_1.00_0.01/9059c663ff406ee7a8cc4b8b2048c783.webp",
#     description: "A Siberian Husky",
#     user_id: 1
# ]) { |po| p po.user }

# plan = Stripe::Plan.create(
#   :amount => 1000,
#   :interval => 'year',
#   :name => 'Basic Plan',
#   :currency => 'aud',
#   :id => 'basic'
# )

# Plan.create(name: plan.name, stripe_id: plan.id, display_price: (plan.amount.to_f / 100))

# Stripe::Plan.create(
#   :amount => 4900,
#   :interval => 'year',
#   :name => 'Premium Plan',
#   :currency => 'aud',
#   :id => 'premium'
# )

# Plan.create(name: plan.name, stripe_id: plan.id, display_price: (plan.amount.to_f / 100))