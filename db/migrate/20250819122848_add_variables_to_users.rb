class AddVariablesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :level, :string
    add_column :users, :availability, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
