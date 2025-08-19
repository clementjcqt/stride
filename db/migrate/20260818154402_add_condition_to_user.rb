class AddConditionToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :conditions, :string
    change_column :users, :availability, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
