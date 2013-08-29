class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :index]
  before_filter :has_right, only: [:edit, :update]
  before_filter :admin_type, only: [:destroy, :index]
  
  def new
    @user = User.new
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      #flash[:success] = "You created your account successfully"
      redirect_to  users_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page], per_page: 10)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    is_male = (params[:user][:male] == "male")?true:false
    params[:user][:male] = is_male
    if @user.update_attributes(user_params)
      #flash[:success] = "Profile is updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User is destroyed"
    redirect_to users_path
  end
  private

  def user_params
    params.required(:user).permit(:name, :email, :address, :male, :password, :password_confirmation)
  end

  def has_right
    @user = User.find(params[:id])
    #flash[:error] = "You don't have rights to do that!"
    redirect_to root_path unless current_user?(@user)
  end

  

  def admin_type
    if current_user && current_user.role && current_user.role.name != "Admin"
      redirect_to root_path, notice: "You must be admin to do that!"
    end
  end
end
