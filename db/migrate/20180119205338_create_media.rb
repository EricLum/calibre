class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :title
      t.string :artist
      t.string :type
      t.integer :like_count
      t.string :filesource
      t.timestamps
    end
  end
end
