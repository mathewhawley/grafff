class SearchesController < ApplicationController

  def all_users
    binding.pry
    users = User.where("first_name = ? AND last_name =? AND username = ?", params[:query])
    render json: users
  end

end