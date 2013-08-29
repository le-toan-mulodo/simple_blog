module SessionsHelper
  def sign_in(user)
    session[:remember_token] = user.remember_token
    self.current_user = user
  end

  def signed_in?
    !self.current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(session[:remember_token])
  end

  def current_user?(user)
    return (user == current_user) || (current_user && current_user.role && current_user.role.name == "Admin")
  end  
    
  def signed_in_user
    unless signed_in?
      save_url
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end

  end

  def sign_out
    current_user = nil
    #cookies.delete(:remember_token)
    session[:remember_token] = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def save_url
    session[:return_to] = request.url
  end
end
