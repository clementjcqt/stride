class AddVariablesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string unless column_exists?(:users, :first_name)
    add_column :users, :last_name, :string unless column_exists?(:users, :last_name)
    add_column :users, :age, :integer unless column_exists?(:users, :age)
    add_column :users, :gender, :string unless column_exists?(:users, :gender)
    add_column :users, :height, :integer unless column_exists?(:users, :height)
    add_column :users, :weight, :integer unless column_exists?(:users, :weight)
    add_column :users, :level, :string unless column_exists?(:users, :level)
    add_column :users, :conditions, :text unless column_exists?(:users, :conditions)
    add_column :users, :availability, :text unless column_exists?(:users, :availability)
    add_column :users, :country, :string unless column_exists?(:users, :country)
  end
end

