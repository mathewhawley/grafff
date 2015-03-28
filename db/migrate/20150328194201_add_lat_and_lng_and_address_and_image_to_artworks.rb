class AddLatAndLngAndAddressAndImageToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :lat, :float
    add_column :artworks, :lng, :float
    add_column :artworks, :address, :string
    add_column :artworks, :image, :text
  end
end
