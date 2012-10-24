Feature: Create a new post
  To send other people a smile
  A user
  Should be able to create a new post

    Scenario: User creates a new post
      Given I am logged in
      When I create a new post
      Then I should see a successfully created message
