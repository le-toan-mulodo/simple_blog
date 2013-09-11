require 'spec_helper'
describe CommentsController do
  describe "POST create" do
    before :each do
      @post = FactoryGirl.create(:post)
      @another_user = FactoryGirl.create(:another_user)      
      session[:remember_token] = @another_user.remember_token
    end
    
    context "with valid attributes" do
      it "creates a new comment" do
        temp_post = {post_id: @post.id, user_id: @another_user.id, body: "anything"}
        expect { post :create, :comment => temp_post, :post_id => @post.id}.to change(Comment,:count).by(1)
      end
      
    end
    
    context "with invalid attributes" do
      it "creates a new comment" do
        temp_post = {post_id: @post.id, user_id: @another_user.id, body: nil}
        expect { post :create, :comment => temp_post, :post_id => @post.id}.to_not change(Comment,:count)
      end

      
    end
  end
  
  
  describe 'DELETE destroy' do
    before :each do     
      @comment = FactoryGirl.create(:comment)      
      @admin = FactoryGirl.create(:admin)
      session[:remember_token] = @admin.remember_token
    end
    
    it "deletes the comment" do                             
      expect { delete :destroy,id: @comment}.to change(Comment,:count).by(-1)
    end   
  end

end
