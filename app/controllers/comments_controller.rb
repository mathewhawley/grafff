class CommentsController < ApplicationController

  def get_all_comments
    comments = Comment.all.to_json(include: [ :user ])
    render json: comments
  end

  def new_comment
    new_comment = Comment.create(params.require(:comment).permit(:content, :user_id, :artwork_id))
    render json: new_comment
  end

end