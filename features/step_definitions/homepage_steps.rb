### UTILITY METHODS ###


### GIVEN ###


### WHEN ###
When /^I look at the homepage$/ do
  visit '/'
end

### THEN ###
Then /^I should see the welcome message$/ do
  page.should have_content "Hi."
  page.should have_content "You're new here?"
end

Then /^I should see a button to create a new post$/ do
  page.should have_content "Add a new post"
  page.should have_selector "a.button.radius"
end