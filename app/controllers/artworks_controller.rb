class ArtworksController < ApplicationController
  
  def get_all_artworks
    artworks = Artwork.all.to_json(include: [{ comments: { include: :user }}, :likes, :users, :user])
    render json: artworks
  end

  def add_artwork
    artwork = Artwork.create(params.require(:artwork).permit(:user_id, :title, :description, :address, :lat, :lng))
    render json: artwork
  end

end