Feature: As a user
  In order to be able to select a dish I like
  I would like to see a menu of dishes

  Background:
    Given the following dishes exist
      | name      | price | description               |
      | Pizza     | 50    | A great italian pan pizza |
      | Hamburger | 40    | Tasty burger              |
      | Kebab     | 35    | Kebabrulle                |


  Scenario: Navigate to dish display page
    Given I am on the home page
    And I click "Menu"
    Then I should be on the dish display page
    And I should see "Make a selection from our mouth watering dishes"

  Scenario: Display list of dishes on dish display page
    Given I am on the dish display page
    Then I should see "Pizza"
    Then I should see "Hamburger"
    Then I should see "Kebab"

  Scenario: No dishes to display
    Given there are no dishes in the system
    And I am on the dish display page
    Then I should see "There are no dishes to display"
