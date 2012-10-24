Feature: Follow
  To see the smiles of a user you should follow him
  A user
  Should be able to follow another user

    Scenario: User follows another user
      Given I am logged in
        And another user exists
      When I follow the other user
        And I look at my profile page
      Then I should see the other username
