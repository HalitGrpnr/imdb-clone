class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.create(comment_params)
    
    redirect_to @comment.commentable
  end

  def show

  end




  private
  def comment_params
    params.require(:comment).permit(:comment, :commentable_id, :commentable_type)
  end

end
