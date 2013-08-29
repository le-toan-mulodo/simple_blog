class PostsController < ApplicationController

  before_filter :signed_in_user, only: [:create, :destroy, :edit, :update, :new]
  before_filter :has_rights?, only: [:edit, :update, :destroy]
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      #flash[:success] = "You created a post successfully"
      redirect_to user_path(current_user)
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
      #flash[:success] = "You updated the article successfully"
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

  # def check_yourself
  # @post = current_user.posts.find_by_id(params[:id])
  # redirect_to posts_path if @post.nil?
  # end

  def has_rights?
    @post = Post.find_by_id(params[:id])
    user = @post.user unless @post.nil?
    unless (user == current_user) || (current_user && current_user.role && current_user.role.name == "Admin")     
      redirect_to root_path
    else
      
    end
  end

end
