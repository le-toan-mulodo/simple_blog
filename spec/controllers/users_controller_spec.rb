require 'spec_helper'

describe UsersController do
  describe "Get #index" do
    it "respond successfully with an HTTP 200 code" do
      visit users_path
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

  end

end
