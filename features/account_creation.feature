Feature: As a user
  To be able to place an order
  I need to be able to create an account

Scenario: Access account creation page
  Given I am on the home page
  And I click "Create Account"
  Then I should be on the account creation page

Scenario: Creating an account
  Given I am on the account creation page
  And I fill in "Username" with "admin"
  And I fill in "Password" with "admin"
  And I fill in "First name" with "ad"
  And I fill in "Last name" with "min"
  And I fill in "Email" with "admin@admin.com"
  And I fill in "Phone number" with "123456789"
  And I click on "Create"
  Then I should see "Account created successfully"
  And I should be on the home page
