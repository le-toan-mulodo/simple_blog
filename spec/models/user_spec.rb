require 'spec_helper'
describe User do
  
  before(:each) do    
    @user = User.new(name: 'toan', email: 'le.toan2@mulodo.com', address: 'HCMC', male: true, password: '123456', password_confirmation: '123456',  role_id: 2)
  end
  
  it "is valid with valid attrs" do
    @user.should be_valid
  end
  
  it "is not valid without a name" do    
    @user.name = nil
    @user.should_not be_valid
  end
    
  
  it "is not valid without  password and password_confirmation" do
    @user.password_confirmation = nil
    @user.password = nil
    
    @user.should_not be_valid
  end
  
  it "is not valid without a email" do
    @user.email = nil
    @user.should_not be_valid
  end
    
end
