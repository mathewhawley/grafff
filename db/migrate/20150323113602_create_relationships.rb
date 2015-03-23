class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :artist_id

      t.timestamps
    end
    add_index :relationships, :follower_id
    add_index :relationships, :artist_id
    add_index :relationships, [:follower_id, :artist_id], unique: true
  end
end
