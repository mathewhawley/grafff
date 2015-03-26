class RelationshipsController < ApplicationController

  def get_all_relationships
    relationships = Relationship.all.to_json
    render json: relationships
  end
  
  def follow_user
    relationship = Relationship.create(params.require(:relationship).permit(:follower_id, :followed_id))
    render json: relationship
  end

  def unfollow_user
    relationship_to_delete = Relationship.find(params[:id])
    relationship_to_delete.destroy
    render json: relationship_to_delete
  end

end