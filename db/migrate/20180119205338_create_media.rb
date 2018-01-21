class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :type
      t.string :title
      t.string :artist
      t.integer :likes
      t.string :filesource
      t.timestamps
    end
  end
end
