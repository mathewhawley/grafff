class LikesController < ApplicationController

  def get_all_likes
    likes = Like.all.to_json(include: [ :user ])
    render json: likes
  end

  def new_like
    like = Like.create(params.require(:like).permit(:user_id, :artwork_id))
    render json: like
  end

end