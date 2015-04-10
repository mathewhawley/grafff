class LikesController < ApplicationController

  # Artwork show page – get artwork's likes
  def artwork_likes
    likes = Like.where(artwork_id: params[:id])
    render json: likes
  end

  # Artwork show page – check if current user already likes this artwork
  def check_for_like
    if Like.where(user_id: params[:user_id].to_i, artwork_id: params[:artwork_id].to_i) != []
      does_like = true
      render json: does_like
    else
      does_like = false
      render json: does_like
    end
  end

  # 'Like' an artwork
  def like_artwork
    like = Like.create(params.require(:like).permit(:user_id, :artwork_id))
    render json: like
  end

  # 'Unlike' an artwork
  def unlike_artwork
    like_to_delete = Like.where(user_id: params[:user_id], artwork_id: params[:artwork_id])
    like_to_delete[0].destroy
    likes = Like.where(artwork_id: params[:artwork_id])
    render json: likes
  end

  # User profile page – gets all of the user's likes to be displayed under the 'likes' tab
  def user_likes
    likes = Like.where(user_id: params[:id]).to_json(include: [{ artwork: { include: [:user, :likes, :comments]}}])
    render json: likes
  end

end