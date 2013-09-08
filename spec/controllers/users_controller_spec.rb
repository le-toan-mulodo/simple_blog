require 'spec_helper'

describe UsersController do
  before :each do
    @user = FactoryGirl.create(:user)
    @admin = FactoryGirl.create(:admin)
    session[:remember_token] = @admin.remember_token
  end

  describe 'DELETE destroy' do
    it "deletes the post" do
      expect{ delete :destroy, id: @user }.to change(User,:count).by(-1)
    end
  end

  describe "Get #index" do
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end

    it "populates an array of user" do      
      get :index
      assigns(:users).should eq([@user])
    end

  end

end
