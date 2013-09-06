Given(/^a guest$/) do
  #do nothing
end

When(/^he provide invalid signup information$/) do
  fill_in "user_name", with: "sdf"
  fill_in "user_email", with: "sdf"
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: "abc123"
  fill_in "user_password_confirmation", with: "sdf"  
end

Then(/^he should not become a member$/) do
  print page.html
  page.should have_selector("div.alert-error")
end

When(/^he provide valid signup information$/) do
  fill_in "user_name", with: "sdfsdfdsf"
  fill_in "user_email", with: "sdf@gmail.com"
  fill_in "user_address", with: "sdf"
  fill_in "user_password", with: "abc123"
  fill_in "user_password_confirmation", with: "abc123"
end

Then(/^he should become a member$/) do
  page.should_not have_content("Sign in")
end


Given(/^a guest visits the signup page$/) do
  visit signin_path
  click_on "Sign up now!"
end
