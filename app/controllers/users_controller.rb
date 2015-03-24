class UsersController < ApplicationController

  def show
    @user = current_user.to_json
    render json: @user
  end

end