class RelationshipsController < ApplicationController

  # User profile page – check if current user already follows this user
  def check_if_following
    if Relationship.where(follower_id: params[:follower_id].to_i, followed_id: params[:followed_id].to_i) != []
      does_follow = true
      render json: does_follow
    else
      does_follow = false
      render json: does_follow
    end
  end
  
  # User profile page - 'Follow' an artist
  def follow_artist
    relationship = Relationship.create(params.require(:relationship).permit(:follower_id, :followed_id))
    render json: relationship
  end

  # User profile page - 'Unfollow' an artist
  def unfollow_artist
    relationship_to_delete = Relationship.where(follower_id: params[:follower_id], followed_id: params[:followed_id])
    relationship_to_delete[0].destroy
    relationships = Relationship.where(followed_id: params[:followed_id])
    render json: relationships
  end

  # User profile page – gets all of the artist that the user is following to be displayed under the 'Artists' tab
  def followed_artists
    followed_artists = Relationship.where(follower_id: params[:id]).to_json(include: [:followed])
    render json: followed_artists
  end

end