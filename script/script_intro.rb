require "ruby_llm"
require "dotenv/load"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["GITHUB_TOKEN"]
  config.openai_api_base = "https://models.inference.ai.azure.com"
end

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
puts response.content
