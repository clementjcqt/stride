# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2026_08_18_154415) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.date "date"
    t.string "event_type"
    t.float "distance_km"
    t.text "description"
    t.string "difficulty"
    t.integer "denivele"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "photo_url"
    t.string "source_url"
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.integer "goal_time"
    t.integer "max_time_per_day"
    t.index ["event_id"], name: "index_goals_on_event_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "goal_id"
    t.index ["goal_id"], name: "index_programs_on_goal_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_type"
    t.bigint "program_id", null: false
    t.integer "duration_min"
    t.integer "distance_km"
    t.integer "week_number"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.index ["program_id"], name: "index_sessions_on_program_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "country"
    t.integer "age"
    t.integer "height"
    t.integer "weight"
    t.string "level"
    t.string "availability"
    t.string "first_name"
    t.string "last_name"
    t.string "conditions"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "goals", "events"
  add_foreign_key "goals", "users"
  add_foreign_key "sessions", "programs"
end
