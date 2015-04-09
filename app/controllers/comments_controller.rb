class CommentsController < ApplicationController

  # Artwork show page – get all comments associated with current artwork
  def all_comments
    comments = Comment.all.to_json(include: [ :user ])
    render json: comments
  end

  # Artwork show page – add a new comment to current artwork
  def new_comment
    new_comment = Comment.create(params.require(:comment).permit(:content, :user_id, :artwork_id))
    render json: new_comment
  end

end