class CommentsController < ApplicationController
  before_action
  def create
    @comment = Comment.new(params_comment)
    if @comment.save
      redirect_to post_path(@comment.post)
    else
      @post = @comment.post
      @comments = @post.comments.includes(:user)
      redirect_to post_path(@comment.post)
    end
  end

  private

  def params_comment
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
