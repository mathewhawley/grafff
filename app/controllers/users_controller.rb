class UsersController < ApplicationController

  def user_show
    user = User.find(params[:id]).to_json
    render json: user
  end

  def get_current_user
    logged_in_user = current_user.to_json(include: [:comments, :artworks, :likes, :followers, :following, :active_relationships])
    render json: logged_in_user
  end

  def get_all_users
    all_users = User.all.to_json(include: [{ comments: { include: [ :user, :artwork ]}}, { likes: { include: [ :user, { artwork: { include: [ :user, :likes, :comments ]}} ]}}, { artworks: { include: [ :comments, :likes, :users, :user ]}}, { active_relationships: { include: [ followed: { include: [ artworks: { include: [ :user ]} ]} ]}}, { passive_relationships: { include: [ :follower ]}}])
    render json: all_users
  end

  def get_artists
    artists = User.where(is_artist: true).to_json(include: :passive_relationships)
    render json: artists
  end

end