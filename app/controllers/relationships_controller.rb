class RelationshipsController < ApplicationController

  def get_all_relationships
    relationships = Relationship.all.to_json
    render json: relationships
  end
  
  # 'Follow' an artist
  def follow_user
    relationship = Relationship.create(params.require(:relationship).permit(:follower_id, :followed_id))
    render json: relationship
  end

  # 'Unfollow' an artist
  def unfollow_user
    relationship_to_delete = Relationship.find(params[:id])
    relationship_to_delete.destroy
    render json: relationship_to_delete
  end

  # User profile page – gets all of the artist that the user is following to be displayed under the 'Artists' tab
  def followed_artists
    followed_artists = Relationship.where(follower_id: params[:id]).to_json(include: [:followed])
    render json: followed_artists
  end

end