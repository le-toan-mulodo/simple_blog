class CommentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :edit, :update, :new]
  def create
    post = Post.find(params[:post_id])
    content_comment = params[:comment][:body]
         
    @comment = current_user.comments.build(body: content_comment, post: post)
    if @comment.save
      #flash[:success] = "You commented successfully"
      @list_comments = post.comments.to_a
      respond_to do |format|
        format.html { redirect_to post}
        format.js {}
      end
    else
      #flash[:error] = "You are failed to comment"
       redirect_to post
    end
    
  end

  def destroy
    @comment = Comment.find(params[:id])
    post = @comment.post    
    @comment.destroy
    @list_comments = post.comments.to_a
    respond_to do |format|
      format.html { redirect_to post}      
      format.js {}
    end
    #redirect_to @comment.post, success: "You deleted the comment successfuly"
  end

  private

  def comment_params
    params.required(:comment).permit(:body, :id)
  end

end
