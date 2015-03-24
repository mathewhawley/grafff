class AddIsArtistToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_artist, :boolean, :default => false
  end
end
