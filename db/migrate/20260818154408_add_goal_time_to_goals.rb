class AddGoalTimeToGoals < ActiveRecord::Migration[7.1]
  def change
    add_column :goals, :goal_time, :integer
  end
end
