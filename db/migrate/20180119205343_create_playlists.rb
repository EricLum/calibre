class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :medium_id
      t.integer :user_id
      t.timestamps
    end
  end
end
