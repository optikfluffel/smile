Feature: Follow
  To see the smiles of a user you should follow him
  A user
  Should be able to follow another user

    Background:
      Given another user exists
      And I am logged in

    Scenario: User follows another user
      When I follow the other user
      And I look at my profile page
      Then I should see the other username

    Scenario: User is able to see another user
      When I look at the list of users
      Then I should see the other username
