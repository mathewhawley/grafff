class ArtworksController < ApplicationController
  
  def get_all_artworks
    artworks = Artwork.all.to_json(include: [{ comments: { include: :user }}, :likes, :users, :user])
    render json: artworks
  end

  def get_main_map_artworks
    main_map_artworks = Artwork.all.to_json(include: [ :comments, :likes, :user ])
    render json: main_map_artworks
  end

  def get_latest_artworks
    latest_artworks = Artwork.last(3).to_json(include: [ :comments, :likes, :user ])
    render json: latest_artworks
  end

  def add_artwork
    artwork = Artwork.create(params.require(:artwork).permit(:user_id, :title, :description, :address, :lat, :lng, :image))
    render json: artwork
  end

end