When(/^he logged in as admin$/) do
  fill_in "session_email", with: 'admin@mulodo.com'
  fill_in "session_password", with: '123456'
  click_button "Sign in"
end

When(/^he click manage users section$/) do
  visit users_path  
end

When(/^he click delete the first user which ables to be deleted from this section$/) do
  @user_count = User.count
  first(:css, "td > a:contains('Delete')").click
end

Then(/^that user should be gone away$/) do
  User.count.should == @user_count - 1
end

When(/^exist users$/) do
  begin
    FactoryGirl.create(:user)
    FactoryGirl.create(:admin)
  rescue
  end

end

