When(/^move to another screen to create an article$/) do
  click_on "Create a post"
end

When(/^fill in valid information to create an article$/) do

  fill_in "post_title", with: "new post title"
  fill_in "post_body", with: "new body"
end

Then(/^you should see the article in your page$/) do
  page.has_content?("new post title")
end

When(/^edit the first article$/) do
  first(:css, "div.alert-info a:contains('edit')").click
  
end

When(/^edit title, body of the article$/) do
  fill_in "post_title", with: "updated title of the article"
  fill_in "post_body", with: "updated body of the article"
  click_on "Save changes"
end

Then(/^you should see the updated article$/) do
  page.has_content?("updated title of the article")
  page.has_content?("updated body of the article")
end


When(/^delete the first article$/) do
  @post_count = Post.count
  first(:css, "div.alert-info a:contains('delete')").click  
end

Then(/^you should no see the deleted article$/) do
  Post.count.should == @post_count - 1
end
