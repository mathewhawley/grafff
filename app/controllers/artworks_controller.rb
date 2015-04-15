class ArtworksController < ApplicationController
  
  # Artwork index page – gets all artworks
  def index
    artworks = Artwork.all.to_json(include: [ :comments, :likes, :user ])
    render json: artworks
  end

  # Artwork show page – gets artwork object from params to render on artwork show page
  def show
    this_artwork = Artwork.find(params[:id]).to_json(include: [ :user ])
    render json: this_artwork
  end

  # Create new artwork
  def new_artwork
    artwork = Artwork.create(params.require(:artwork).permit(:user_id, :title, :description, :address, :lat, :lng, :image))
    render json: artwork
  end

  # Homepage – gets all artwork from past 30 days to be rendered as markers on the main map
  def main_map_artwork
    # main_map_artwork = Artwork.where(created_at: (Time.now.midnight - 30.day)..Time.now.midnight).to_json(include: [ :comments, :likes, :user ])
    main_map_artwork = Artwork.all.to_json(include: [ :comments, :likes, :user ])
    render json: main_map_artwork
  end

  # Homepage – get artworks based on datepicker selection
  def filter_by_date
    date = Time.at(params[:_json]).to_datetime
    year = date.year
    month = date.month
    results = []
    Artwork.all.each do |artwork|
      if (artwork.created_at.year && artwork.created_at.month) == (year && month)
        artwork_object = Artwork.where(id: artwork.id).to_json(include: [ :comments, :likes, :user ])
        ruby_hash = JSON.parse(artwork_object)
        results << ruby_hash[0]
      else
        results
      end
    end
    render json: results
  end

  # Homepage - gets the 3 most recent artworks to display on the homepage
  def latest_artworks
    latest_artworks = Artwork.last(3).to_json(include: [ :comments, :likes, :user ])
    render json: latest_artworks
  end

  # User profile page – gets all artworks associated with a user, to be displayed if a user is an artist
  def user_artworks
    artist_artworks = Artwork.where(user_id: params[:id]).to_json(include: [ :likes, :comments, :user ])
    render json: artist_artworks
  end

end