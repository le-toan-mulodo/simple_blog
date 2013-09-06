When(/^visit blog path$/) do
  visit posts_path
end

When(/^read the first article$/) do
  #print page.html
  first(:css, 'div.alert-info > span > a').click
end

When(/^send a comment for the article$/) do
  fill_in "comment_body", with: "my first comment"
  click_button "Submit"
end

Then(/^a number of comments should increase$/) do
  page.should have_content("my first comment")
end

