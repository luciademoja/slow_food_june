Feature: As a user
  In order to be able to select a dish I like
  I would like to see a menu of dishes

  Background:

    Given the following categories exists
      | name        |
      | Starter     |
      | Main Course |
      | Dessert     |

    Given the following dishes exist
      | name      | price | description               | category    |
      | Salad     | 10    | This is not food          | Starter     |
      | Nachos    | 15    | This is also not food     | Starter     |
      | Pizza     | 50    | A great italian pan pizza | Main Course |
      | Hamburger | 40    | Tasty burger              | Main Course |
      | Kebab     | 35    | Kebabrulle                | Main Course |
      | Ice Cream | 25    | Yummy!                    | Dessert     |
      | Apple pie | 10    | This is not food          | Dessert     |


  Scenario: Navigate to dish display page
    Given I am on the home page
    And I click "Menu"
    Then I should be on the dish display page
    And I should see "Make a selection from our mouth watering dishes"

  Scenario: Display list of dishes on dish display page
    Given I am on the dish display page
    Then I should see "Nachos" within "Starter"
    And I should see "Hamburger" within "Main Course"
    And I should see "Ice Cream" within "Dessert"

  Scenario: No dishes to display
    Given there are no dishes in the system
    And I am on the dish display page
    Then I should see "There are no dishes to display"
