Feature: Timeline
  A user
  Should see timeline if logged in and follows user who has a post

    Scenario: Logged in user watches timeline
      Given I am logged in
        And another user exists
      When I follow the other user
        And I create a new post
        And I look at the homepage
      Then I should see the post
