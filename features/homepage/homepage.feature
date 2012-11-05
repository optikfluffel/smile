Feature: Homepage
  A user
  Should see different things at the Homepage if logged in

    Scenario: Logged out user watches homepage
      Given I am not logged in
      When I look at the homepage
      Then I should see the welcome message

    Scenario: Logged in user watches homepage
      Given I am logged in
      When I look at the homepage
      Then I should see a button to create a new post
