class RemoveMaxTimeFromGOals < ActiveRecord::Migration[7.1]
  def change
    remove_column :goals, :max_time_per_day, :time
  end
end
