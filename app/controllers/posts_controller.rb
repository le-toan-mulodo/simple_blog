class PostsController < ApplicationController

  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :check_yourself, only: [:destroy, :edit, :update]
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "You created a post successfully"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    @post.destroy
    redirect_back_or posts_path
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.paginate(page: params[:page], per_page: 10)
  end
  
  def edit    
  end
  
  
  def update
    if @post.update_attributes(post_params)
      flash[:success] = "You updated the article successfully"
      redirect_to posts_path
    else
      render 'edit'
    end
  end 
  
  def show
    @post = Post.find(params[:id])      
  end

  private

  def post_params
    params.required(:post).permit(:title, :body)
  end

  def check_yourself
    @post = current_user.posts.find_by_id(params[:id])
    redirect_to posts_path if @post.nil?
  end

end
