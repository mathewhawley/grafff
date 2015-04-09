class ArtworksController < ApplicationController
  
  def index
    artworks = Artwork.all.to_json(include: [ :comments, :likes, :user ])
    render json: artworks
  end

  def new_artwork
    artwork = Artwork.create(params.require(:artwork).permit(:user_id, :title, :description, :address, :lat, :lng, :image))
    render json: artwork
  end

  # Homepage – gets all artwork to be rendered as markers on the main map
  def main_map
    main_map_artwork = Artwork.all.to_json(include: [ :comments, :likes, :user ])
    render json: main_map_artwork
  end

  # Homepage - gets the 3 most recent artworks to display on the homepage
  def latest_artworks
    latest_artworks = Artwork.last(3).to_json(include: [ :comments, :likes, :user ])
    render json: latest_artworks
  end

  # User profile page – gets all artworks associated with a user, to be displayed if a user is an artist
  def user_artworks
    artist_artworks = Artwork.where(user_id: params[:id]).to_json(include: [:likes, :comments, :user])
    render json: artist_artworks
  end

end