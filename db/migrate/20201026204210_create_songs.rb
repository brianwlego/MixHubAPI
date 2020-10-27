class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :tracklist, null: false, foreign_key: true
      t.integer :order_num
      t.string :orig_artist
      t.string :start_time

      t.timestamps
    end
  end
end
