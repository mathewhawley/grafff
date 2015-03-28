class AddTimestampsToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :created_at, :datetime
    add_column :artworks, :updated_at, :datetime
  end
end
