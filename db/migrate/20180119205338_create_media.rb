class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :title
      t.string :source
      t.integer :playlist_id
      t.timestamps
    end
  end
end
