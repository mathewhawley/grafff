class LikesController < ApplicationController

  def get_all_likes
    likes = Like.all.to_json(include: [ :user ])
    render json: likes
  end

  def like_artwork
    like = Like.create(params.require(:like).permit(:user_id, :artwork_id))
    render json: like
  end

  def unlike_artwork
    like_to_delete = Like.find(params[:id])
    like_to_delete.destroy
    render json: like_to_delete 
  end

end