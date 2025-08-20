class AddColumnsToGoals < ActiveRecord::Migration[7.1]
  def change
    add_column :goals, :start_date, :date
    add_column :goals, :max_time_per_day, :time
  end
end
