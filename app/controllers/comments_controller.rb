class CommentsController < ApplicationController

  def new_comment
    new_comment = Comment.create(params.require(:comment).permit(:content, :user_id, :artwork_id))
    render json: new_comment
  end

end