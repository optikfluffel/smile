### UTILITY METHODS ###
def create_another_visitor
  @another_visitor ||= { :username => "otheruser", :email => "other@example.com",
    :password => "justdoit", :password_confirmation => "justdoit" }
end

def create_another_user
  create_another_visitor
  delete_another_user
  @another_user = FactoryGirl.create(:user, @another_visitor)
end

def follow_another_user
  create_another_user
  @following = FactoryGirl.create(:following)
end

def delete_another_user
  @another_user ||= User.where(:username => @another_visitor[:username]).first
  @another_user.destroy unless @another_user.nil?
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
  page.should have_content @another_visitor[:username]
end

Then /^I should not see the other username$/ do
  page.should_not have_content @another_visitor[:username]
end
