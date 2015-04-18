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
    followed_artists = Relationship.where(follower_id: params[:id]).to_json(include: [{ followed: { include: [ :passive_relationships ]}}])
    render json: followed_artists
  end

  # User profile page – get all artwork from this user's followed artists (active_relationships)
  def activity_feed
    user = User.find(params[:id])
    followed_artist_ids = user.active_relationships.map { |relationship| relationship.followed_id }
    followed_artist_artworks = []
    Artwork.all.each do |artwork|
      if (followed_artist_ids.include?(artwork.user_id))
        artwork_object = Artwork.where(user_id: artwork.user_id).to_json(include: [ :user, :comments, :likes ])
        ruby_hash = JSON.parse(artwork_object)
        followed_artist_artworks << ruby_hash[0]
      else
        followed_artist_artworks
      end
    end
    render json: followed_artist_artworks
  end

end
