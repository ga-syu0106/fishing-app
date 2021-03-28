class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :fishing_date,        null: false
      t.time :fishing_time,       null: false
      t.integer :municipality_id, null: false
      t.string :spot
      t.integer :weather_id,      null: false
      t.integer :fish_kind_id,    null: false
      t.string :fish_name
      t.string :gimmick,         null: false
      t.string :rod
      t.string :reel
      t.string :line
      t.text :explanation
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
