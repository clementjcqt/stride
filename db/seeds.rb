# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

p "starting seeding..."
unless User.find_by(email: "toto@toto.fr")
  User.create(email: "toto@toto.fr", password: "123456")
end

10.times do
  event = Event.create(
    title: Faker::Lorem.sentence(word_count: 3),
    location: Faker::Locations::Australia.location,
    date: Faker::Date.forward(days: 365),
    event_type: ['trail', 'marathon', 'semi-marathon'].sample,
    distance_km: rand(100),
    description: Faker::Lorem.sentence(word_count: 15),
    difficulty: ['easy', 'intermediate', 'hard'].sample,
    denivele: rand(1000)
  )
  p event
end

p "user created: #{User.last.email}"

p 'finished seeding'
