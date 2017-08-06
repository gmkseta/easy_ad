class CreateHposts < ActiveRecord::Migration
  def change
    create_table :hposts do |t|
      t.text :htmltag
      t.string :picture
      t.string :result

      t.timestamps null: false
    end
  end
end
