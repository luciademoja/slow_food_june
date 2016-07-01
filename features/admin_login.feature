Feature: As a restaurant owner
  in order to be able to manage my system
  I would like my account to be set to an admin account

  Note: This is NOT a test that actually tests for current_users status

  Background:
    Given the following users exist
      | username  | password | admin |
      | new_admin | password | true  |

  Scenario: Log in as admin
    Given I am on the login page
    And I fill in "Username" with "new_admin"
    And I fill in "Password" with "password"
    And I click on "Submit"
    Then I should see "Welcome Administrator"
