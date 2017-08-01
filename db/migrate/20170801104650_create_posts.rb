class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :detail
      t.text :address
      t.string :picture
      t.timestamps null: false
    end
  end
end
