Given(/^a user visits the sign in page$/) do
  visit signin_path
end

When(/^he provide invalid signin information$/) do
  fill_in 'session_email', with: "le.toan@mulodo.com"
  fill_in 'session_password', with: "123"
  click_button "Sign in"
end

Then(/^he should see an error message$/) do
  page.has_content?("Invalid email or password")
end

Given(/^a user visits the signin page$/) do
  visit signin_path
end

Given(/^the user has an account$/) do
  
end

When(/^the user submits valid signin information$/) do
  fill_in "session_email", with: 'le.toan@mulodo.com'
  fill_in "session_password", with: '123456'
  click_button "Sign in"
end

Then(/^the user should see the profile page$/) do
  
  page.has_content?("Create a post")  
end
