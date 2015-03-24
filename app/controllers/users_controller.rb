class UsersController < ApplicationController

  def get_current_user
    @current_user = current_user.to_json(:include => [:comments, :artworks, :likes, :followers, :following])
    render json: @current_user
  end

end