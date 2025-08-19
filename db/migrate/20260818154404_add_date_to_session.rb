class AddDateToSession < ActiveRecord::Migration[7.1]
  def change
    add_column :sessions, :date, :date
  end
end
