class LikesController < ApplicationController

  # Artwork show page – get artwork's likes
  def artwork_likes
    likes = Like.where(artwork_id: params[:id])
    render json: likes
  end

  # 'Like' an artwork
  def like_artwork
    like = Like.create(params.require(:like).permit(:user_id, :artwork_id))
    render json: like
  end

  # 'Unlike' an artwork
  def unlike_artwork
    like_to_delete = Like.find(params[:id])
    like_to_delete.destroy
    render json: like_to_delete 
  end

  # User profile page – gets all of the user's likes to be displayed under the 'likes' tab
  def user_likes
    likes = Like.where(user_id: params[:id]).to_json(include: [{ artwork: { include: [:user, :likes, :comments]}}])
    render json: likes
  end

end