class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      flash[:success] = "You commented successfully"
    else
      flash[:error] = "You are failed to comment"
    end
    redirect_to @post
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.post, success: "You deleted the comment successfuly"
  end

  private

  def comment_params
    params.required(:comment).permit(:body)
  end

end
