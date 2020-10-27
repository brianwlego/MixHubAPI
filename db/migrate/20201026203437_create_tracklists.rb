class CreateTracklists < ActiveRecord::Migration[6.0]
  def change
    create_table :tracklists do |t|
      t.string :name
      t.text :link
      t.integer :artist_id
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :festival_id
      t.text :img_url

      t.timestamps
    end
  end
end
