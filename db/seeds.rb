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

# require "ruby_llm"
# require "dotenv/load"

# RubyLLM.configure do |config|
#   config.openai_api_key = ENV["GITHUB_TOKEN"]
#   config.openai_api_base = "https://models.inference.ai.azure.com"
# end

prompt = <<-PROMPT
You are a professional running coach. Generate a structured **training program** in JSON format.
## Athlete Profile
- Level: beginner
- Age: 23
- Gender: female
- Height: 187 cm
- Weight: 67 kg
- Availability: vendredi, samedi
- Medical conditions/injuries: nil
- Name: Semi-marathon de Bordeaux
- Date: 9 novembre 2025
- Type: semi-marathon
- Distance: 21.1 km
- Elevation gain: 12 m
## Goal
- Target time: 180 minutes
- Preparation start date: 20 août 2025
- Max duration per session: 90 minutes
## Instructions
- Generate a **weekly training plan** from the preparation date until the event date.
- Each week should contain a list of **sessions**.
- Each session must include the following keys:
  - date (YYYY-MM-DD)
  - session_type (string, e.g., "easy run", "intervals", "long run", "rest", "cross-training")
  - duration_min (integer)
  - distance_km (float)
  - notes (string, max 2 sentences)
- Only include sessions that respect the user's availability and max duration per session.
## Output format
The output must be **valid JSON** as an **array of sessions**, each ready to be inserted into the sessions table with these fields:
{
  "program": [
    {
      "week_number": integer,
      "sessions": [
        {
          "date": "YYYY-MM-DD",
          "session_type": "string",
          "duration_min": integer,
          "distance_km": float,
          "notes": "string"
        }
      ]
    }
  ]
}
Keep the JSON clean, concise, and ready to parse for saving each session into the `sessions` table.
PROMPT
response = RubyLLM.chat.ask(prompt)
# puts response.content

# file = File.read("db/response.json")

program = Program.create!
JSON.parse(response.content)["program"].each do |week|
  puts "week number, #{week["week_number"]}"
  week["sessions"].each do |week_sessions|
    puts "week sessions, #{week_sessions}"
    session = Session.new(
      date: week_sessions["date"],
      session_type: week_sessions["session_type"],
      duration_min: week_sessions["duration_min"],
      distance_km: week_sessions["distance_km"],
      notes: week_sessions["notes"],
      week_number: week["week_number"]
    )
    session.program = program
    session.save
  end
end
