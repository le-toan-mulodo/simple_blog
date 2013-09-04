When(/^visit blog path$/) do
  visit posts_path
end

When(/^read the first article$/) do
   #page.find('.alert-info').value
   #page.should have_content("Blogs")
   print page.html
end

When(/^send a comment for the article$/) do
 pending # express the regexp above with the code you wish you had
end

Then(/^a number of comments should increase$/) do
 pending # express the regexp above with the code you wish you had
end



