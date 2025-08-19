class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.string :event_type
      t.float :distance_km
      t.text :description
      t.string :difficulty
      t.integer :denivele

      t.timestamps
    end
  end
end
