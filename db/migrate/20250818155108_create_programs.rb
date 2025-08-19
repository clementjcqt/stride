class CreatePrograms < ActiveRecord::Migration[7.1]
  def change
    create_table :programs do |t|
      t.text :content
      t.integer :goal_id

      t.timestamps
    end
  end
end
