### UTILITY METHODS ###
def create_other_post
  @post_attributes = FactoryGirl.attributes_for(:post)
end

### GIVEN ###
Given /^another user has a post$/ do
  create_other_post
end

### WHEN ###
When /^I create a new post$/ do
  visit '/'
  click_link 'Add a new post'
  create_other_post
  fill_in "Title", :with => @post_attributes[:title]
  fill_in "Description", :with => @post_attributes[:description]
  click_button "Save"
end

### THEN ###
Then /^I should see a successfully created message$/ do
  page.should have_content "Post was successfully created."
end

Then /^I should see the post$/ do
  page.should have_content @post_attributes[:title]
  page.should have_content @post_attributes[:description]
end
