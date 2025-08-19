class CreateGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :goals do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :program, null: false, foreign_key: true
      t.boolean :registered
      t.time :goal_time
      t.integer :max_weekly_distance_km
      t.string :training_type_preference
      t.time :run_time_begins
      t.time :run_time_ending
      t.integer :prep_time

      t.timestamps
    end
  end
end
