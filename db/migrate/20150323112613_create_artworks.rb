class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.integer :user_id
    end
  end
end
