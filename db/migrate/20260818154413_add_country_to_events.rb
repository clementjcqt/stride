class AddCountryToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :country, :string
  end
end
