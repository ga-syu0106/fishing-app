class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :fishing_day,        null: false
      t.time :fishing_time,       null: false
      t.integer :municipality_id, null: false
      t.string :spot
      t.integer :whether_id,      null: false
      t.integer :fish_kind_id,    null: false
      t.string :fish_name
      t.integer :animal,          null:false
      t.integer :gimmick,         null: false
      t.string :rod
      t.string :reel
      t.string :line
      t.text :explanation
      t.timestamps
    end
  end
end
