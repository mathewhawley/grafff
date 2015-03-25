class UsersController < ApplicationController

  def get_all_users
    all_users = User.all.to_json(include: [{ comments: { include: [ :user, :artwork ]}}, { likes: { include: [ :user, { artwork: { include: [ :user ]}} ]}}, { artworks: { include: [ :comments, :likes, :users ]}}, { active_relationships: { include: [ :followed ]}}, { passive_relationships: { include: [ :follower ]}}])
    
    render json: all_users
  end

  def get_current_user
    logged_in_user = current_user.to_json(:include => [:comments, :artworks, :likes, :followers, :following])
    render json: logged_in_user
  end

end