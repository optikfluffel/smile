### UTILITY METHODS ###
def create_another_visitor
  @other_visitor ||= FactoryGirl.attributes_for(:other_user)
end

def create_another_user
  create_another_visitor
  delete_another_user
  @other_user = FactoryGirl.create(:other_user)
end

def follow_another_user
  create_another_user
  @following = FactoryGirl.create(:following)
end

def delete_another_user
  @other_user ||= User.where(:username => @other_visitor[:username]).first
  @other_user.destroy unless @other_user.nil?
end

### GIVEN ###
Given /^another user exists$/ do
  create_another_user
end

Given /^I follow another user$/ do
  visit '/users'
  click_link 'Follow'
end

### WHEN ###
When /^I follow the other user$/ do
  visit '/users'
  click_link 'Follow'
end

When /^I unfollow the other user$/ do
  click_link 'unfollow'
end

### THEN ###
Then /^I should see the other username$/ do
  page.should have_content @other_visitor[:username]
end

Then /^I should not see the other username$/ do
  page.should_not have_content @other_visitor[:username]
end
