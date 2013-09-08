When(/^he logged in as admin$/) do
  fill_in "session_email", with: 'le.toan@mulodo.com'
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
  Post.count.should == @user_count - 1
end
