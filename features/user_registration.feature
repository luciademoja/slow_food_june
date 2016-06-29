Feature: As a user
  To be able to place an order
  I need to be able to register an account

Scenario: Access registration page
  Given I am on the home page
  And I click "register"
  Then I should be on the registration page
