require 'spec_helper'

describe PostsController do
  describe "Get #index" do
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end

    it "populates an array of posts" do
      post = FactoryGirl.create(:post)
      get :index
      assigns(:posts).should eq([post])
    end

  end

  describe "GET #show" do
    it "assigns the requested post to @post" do
      post = FactoryGirl.create(:post)
      get :show, id: post
      assigns(:post).should eq(post)
    end

    it "renders the #show view" do
      get :show, id: FactoryGirl.create(:post)
      response.should render_template :show
    end
  end

  describe "POST create" do
    before :each do
      @user = FactoryGirl.create(:user)
      session[:remember_token] = @user.remember_token
    end
    context "with valid attributes" do
      it "creates a new contact" do
        expect { post :create, :post => FactoryGirl.attributes_for(:post) }.to change(Post,:count).by(1)
      end

      context "with invalid attributes" do
        it "does not save the new contact" do
          expect{ post :create, post: FactoryGirl.attributes_for(:invalid_post) }.to_not change(Post,:count)
        end

      # it "re-renders the new method" do
      # expect { post :create, post: FactoryGirl.attributes_for(:post)}.should render_template("new")
      # end
      end
    end
  end

  describe 'PUT update' do
    before :each do
      @post = FactoryGirl.create(:post, title: "a title", body: "a body", user_id: 1)
      @admin = FactoryGirl.create(:admin)
      session[:remember_token] = @admin.remember_token
    end

    context "valid attributes" do
      it "changes @post's attributes" do
        put :update, id: @post, post: FactoryGirl.attributes_for(:post, body: "Larry", title: "Smith", user_id:1)
        @post.reload
        @post.body.should eq("Larry")
        @post.title.should eq("Smith")
      end

    end

    context "invalid attributes" do
      it "does not change title's attributes" do
        put :update, id: @post, post: FactoryGirl.attributes_for(:post, body: "Larry", title: nil, user_id: 1)
        @post.reload
        @post.body.should_not eq("Larry")
        @post.title.should eq("a title")
      end
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @post = FactoryGirl.create(:post)
      @admin = FactoryGirl.create(:admin)
      session[:remember_token] = @admin.remember_token
    end
    it "deletes the post" do
      expect{ delete :destroy, id: @post }.to change(Post,:count).by(-1)
    end   
  end

end