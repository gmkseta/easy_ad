class CreateHposts < ActiveRecord::Migration
  def change
    create_table :hposts do |t|
      t.text :htmltag
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.string :picture4
      t.string :picture5
      t.string :back_ground
      t.string :result

      t.timestamps null: false
    end
  end
end
