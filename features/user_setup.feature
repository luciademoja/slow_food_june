Feature: As a user
  To be able to place an order
  I need to be able to log in to the site

Scenario: Access the site
  Given I am on the home page
  And I click "Log in"
  Then I should be on the login page
