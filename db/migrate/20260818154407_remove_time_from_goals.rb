class RemoveTimeFromGoals < ActiveRecord::Migration[7.1]
  def change
    remove_column :goals, :goal_time, :time
  end
end
