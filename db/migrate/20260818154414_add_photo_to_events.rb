class AddPhotoToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :photo_url, :string
  end
end
