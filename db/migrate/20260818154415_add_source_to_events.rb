class AddSourceToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :source_url, :string
  end
end
