class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @goal = Goal.find(params[:goal_id])
    @program = Program.find(params[:id])
    @sessions = @program.sessions.order(:date)
  end

  def create
    goal = Goal.find(params[:goal_id])
    event = goal.event

    @program = Program.create!(goal: goal)

    prompt = <<-PROMPT
You are a professional running coach. Generate a structured **training program** in JSON format.
## Athlete Profile
- Level: #{current_user.level}
- Age: #{current_user.age}
- Gender: #{current_user.gender}
- Height: #{current_user.height} cm
- Weight: #{current_user.weight} kg
- Availability: #{current_user.availability.is_a?(Hash) ? current_user.availability.map { |k,v| "#{k}: #{v}" }.join(", ") : Array(current_user.availability).join(", ")}
- Medical conditions/injuries: #{current_user.conditions.is_a?(Hash) ? current_user.conditions.map { |k,v| "#{k}: #{v}" }.join(", ") : Array(current_user.conditions).join(", ")}
## Event
- Name: #{event.title}
- Date: #{event.date}
- Type: #{event.event_type}
- Distance: #{event.distance_km} km
- Elevation gain: #{event.denivele} m
## Goal
- Target time: #{goal.goal_time} minutes
- Preparation start date: #{goal.start_date}
- Max duration per session: #{goal.max_time_per_day} minutes
## Instructions
- Generate a **weekly training plan** from the preparation date until the event date.
- Each week should contain a list of **sessions**.
- Each session must include the following keys:
  - date (YYYY-MM-DD)
  - session_type (string, e.g., "easy run", "intervals", "long run", "tempo run")
  - duration_min (integer)
  - distance_km (float)
  - notes (string, max 2 sentences)
- Only include sessions that respect the user's availability and max duration per session.
## Output format
The output must be **valid JSON** as an **array of sessions**, each ready to be inserted into the sessions table with these fields:
{
  "program": [
    {
      "sessions": [
        {
          "week_number": integer,
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
#     response = RubyLLM.chat.ask(prompt)
# # puts response.content
# # file = File.read("db/response.json")
#     # program = Program.create!
#     clean_response = clean_json_response(response.content.to_s)
#     JSON.parse(clean_response)["program"].each do |week|
#       puts "week number, #{week["week_number"]}"
#       week["sessions"].each do |week_sessions|
#         puts "week sessions, #{week_sessions}"
#         @session = Session.new(
#           date: week_sessions["date"],
#           session_type: week_sessions["session_type"],
#           duration_min: week_sessions["duration_min"],
#           distance_km: week_sessions["distance_km"],
#           notes: week_sessions["notes"],
#           week_number: week["week_number"]
#         )
#         @sessions.program = @program
#         @sessions.save
#         @program.content = response.content
#       end
#     end
#     # response = RubyLLM.chat.ask(prompt)
#     # clean_response = clean_json_response(response.content.to_s)
#     # sessions_data = JSON.parse(clean_response)
#     # sessions_data.each do |week|
#     #   week["sessions"].each do |s|
#     #     @program.sessions.create!(
#     #       week_number: s["week_number"].to_i,
#     #       date: s["date"],
#     #       session_type: s["session_type"],
#     #       duration_min: s["duration_min"],
#     #       distance_km: s["distance_km"],
#     #       notes: s["notes"]
#     #     )
#     #   end
#     # end
#     redirect_to goal_program_path(@program.goal, @program)
    #   end

    response = RubyLLM.chat.ask(prompt)

    clean_response = clean_json_response(response.content.to_s)
    program_data = JSON.parse(clean_response)["program"]

    program_data.each do |week|
      week_number = week["week_number"]
      week["sessions"].each do |session_data|
        @program.sessions.create!(
          week_number: week_number,
          date: session_data["date"],
          session_type: session_data["session_type"],
          duration_min: session_data["duration_min"],
          distance_km: session_data["distance_km"],
          notes: session_data["notes"]
        )
      end
    end

    @program.update!(content: response.content)

    redirect_to goal_program_path(@program.goal, @program), notice: "Programme créé avec succès !"
  end

  private

  def clean_json_response(content)
    cleaned = content.strip
    cleaned = cleaned.gsub(/\A```json\s*/, '')
    cleaned = cleaned.gsub(/\s*```\z/, '')
    cleaned = cleaned.gsub(/```/, '')
    cleaned.strip
  end
end
#   def clean_json_response(content)
#     # Remove markdown code blocks if present
#     cleaned = content.strip
#     # Remove ```json at the beginning
#     cleaned = cleaned.gsub(/\A```json\s*/, '')
#     # Remove ``` at the end
#     cleaned = cleaned.gsub(/\s*```\z/, '')
#     # Remove any remaining backticks
#     cleaned = cleaned.gsub(/```/, '')
#     cleaned.strip
#   end
# end
