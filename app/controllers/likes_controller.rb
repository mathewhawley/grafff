class LikesController < ApplicationController

  def new_like
    like = Like.create(params.require(:like).permit(:user_id, :artwork_id))
    render json: like
  end

end