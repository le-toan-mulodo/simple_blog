Given(/^a guest$/) do
  #do nothing
end

Then(/^he should not become a member$/) do  
  page.should have_selector("div.alert-error")
end

When(/^he provide valid signup information$/) do
  fill_in "user_name", with: "sdfsdfdsf"
  fill_in "user_email", with: "sdf@gmail.com"
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: "abc123"
  fill_in "user_password_confirmation", with: "abc123"
end

When(/^he click Create Account$/) do
  click_on "Create Account"
end

Then(/^he should become a member$/) do
  page.should_not have_content("Sign in")
end


Given(/^a guest visits the signup page$/) do
  visit signin_path
  click_on "Sign up now!"
end


Given(/^he provide invalid signup information with name is empty$/) do
  fill_in "user_name", with: ""
  fill_in "user_email", with: "sdf@gmail.com"
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: "abc123"
  fill_in "user_password_confirmation", with: "abc123"
end

Given(/^he provide invalid signup information with email is empty$/) do
  fill_in "user_name", with: "sdfsdfdsf"
  fill_in "user_email", with: ""
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: "abc123"
  fill_in "user_password_confirmation", with: "abc123"
end

Given(/^he provide invalid signup information with email is "(.*?)"$/) do |invalid_email|
  fill_in "user_name", with: "sdfsdfdsf"
  fill_in "user_email", with: invalid_email
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: "abc123"
  fill_in "user_password_confirmation", with: "abc123"
end

Given(/^he provide invalid signup information with password is emtpy$/) do
  fill_in "user_name", with: "sdfsdfdsf"
  fill_in "user_email", with: "sdf@gmail.com"
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: ""
  fill_in "user_password_confirmation", with: "abc123"
end

Given(/^he provide invalid signup information with password is "(.*?)"$/) do |invalid_password|
  fill_in "user_name", with: "sdfsdfdsf"
  fill_in "user_email", with: "sdfsdfds@gmail.com"
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: invalid_password
  fill_in "user_password_confirmation", with: "abc123"
end
