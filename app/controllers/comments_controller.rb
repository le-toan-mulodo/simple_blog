class CommentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :edit, :update, :new]
  def create
    post = Post.find(params[:post_id])
    content_comment = params[:comment][:body]
         
    @comment = current_user.comments.build(body: content_comment, post: post)
    if @comment.save
      flash[:success] = "You commented successfully"
    else
      flash[:error] = "You are failed to comment"
    end
    redirect_to post
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
