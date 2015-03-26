class RelationshipsController < ApplicationController

  def get_all_relationships
    relationships = Relationship.all.to_json
    render json: relationships
  end
  
  def follow_user
    relationship = Relationship.create(params.require(:relationship).permit(:follower_id, :followed_id))
    render json: relationship
  end

end