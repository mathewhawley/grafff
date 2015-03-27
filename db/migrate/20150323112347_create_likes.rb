class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :artwork_id
      t.integer :user_id

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :artwork_id
    add_index :likes, [:user_id, :artwork_id], unique: true
  end
end
