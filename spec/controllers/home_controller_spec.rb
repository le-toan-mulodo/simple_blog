require 'spec_helper'

describe HomeController do   
  describe "Get #index" do
    it "respond successfully with an HTTP 200 code" do
      visit root_path
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
        
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end
end

  
