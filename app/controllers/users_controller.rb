class UsersController < ApplicationController

  # Gets the current user object
  def get_current_user
    user = current_user.to_json(include: [:comments, :artworks, :likes, :followers, :following, :active_relationships])
    render json: user
  end

  # Artist index page – gets all artists to be rendered on 'All Artists' page
  def all_artists
    artists = User.where(is_artist: true).to_json(include: [:passive_relationships])
    render json: artists
  end

  # Homepage – gets all artists, to be sorted and displayed as 'featured artists' based on number of followers 
  def popular_artists
    artists = User.where(is_artist: true).to_json(include: :passive_relationships)
    render json: artists
  end

  # User profile page – gets user object from params to render on user profile page
  def show
    user = User.find(params[:id]).to_json(include: [:active_relationships, :passive_relationships])
    render json: user
  end

end