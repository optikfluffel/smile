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

def delete_another_user
  @another_user ||= User.where(:username => @another_visitor[:username]).first
  @another_user.destroy unless @user.nil?
end

### GIVEN ###
Given /^another user exists$/ do
  create_another_user
end

### WHEN ###
When /^I follow the other user$/ do
  visit '/users'
  click_link 'Follow'
end

### THEN ###
Then /^I should see the other username$/ do
  page.should have_content @another_visitor[:username]
end