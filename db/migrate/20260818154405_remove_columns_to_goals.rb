class RemoveColumnsToGoals < ActiveRecord::Migration[7.1]
  def change
    remove_column :goals, :registered, :boolean
    remove_column :goals, :max_weekly_distance_km, :integer
    remove_column :goals, :training_type_preference, :string
    remove_column :goals, :run_time_begins, :time
    remove_column :goals, :run_time_ending, :time
    remove_column :goals, :prep_time, :integer
  end
end
