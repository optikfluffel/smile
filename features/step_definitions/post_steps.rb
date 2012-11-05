### UTILITY METHODS ###


### GIVEN ###


### WHEN ###
When /^I create a new post$/ do
  visit '/'
  click_link 'Add a new post'
  fill_in "Title", :with => 'My cool title'
  fill_in "Description", :with => 'This is my awesome description.'
  click_button "Save"
end

### THEN ###
Then /^I should see a successfully created message$/ do
  page.should have_content "Post was successfully created."
end
