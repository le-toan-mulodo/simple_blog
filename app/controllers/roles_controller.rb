class RolesController  < ApplicationController
  def index
  end

  private
  
  def role_params
    params.required(:role).permit(:name, :description)
  end

end