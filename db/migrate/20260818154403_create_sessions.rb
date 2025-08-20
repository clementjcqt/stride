class CreateSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :sessions do |t|
      t.string :session_type
      t.references :program, null: false, foreign_key: true
      t.integer :duration_min
      t.integer :distance_km
      t.integer :week_number
      t.text :notes

      t.timestamps
    end
  end
end
