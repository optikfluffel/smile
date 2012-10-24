Feature: Unfollow
  To get rid of people you don't like anymore
  A user
  Should be able to unfollow another user

    Scenario: User unfollows another user
      Given I am logged in
        And another user exists
        And I follow another user
      When I unfollow the other user
        And I look at my profile page
      Then I should not see the other username