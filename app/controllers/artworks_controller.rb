class ArtworksController < ApplicationController
  
  def get_all_artworks
    artworks = Artwork.all.to_json(include: [:comments, :likes, :users, :user])
    render json: artworks
  end

end