class UsersController < ApplicationController

  def get_current_user
    @user = current_user.to_json(:include => [:comments, :artworks, :likes])
    render json: @user
  end

end