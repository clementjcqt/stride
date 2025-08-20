class AddMaxTimeToGoals < ActiveRecord::Migration[7.1]
  def change
    add_column :goals, :max_time_per_day, :integer
  end
end
