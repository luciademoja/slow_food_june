Feature: As a visitor
  In order to add a dish to my order when I click on 'Add to order' for a specific dish
  I would like to see an 'Add to order' link on every dish

  Background:
    Given the following users exist
      | username | password |
      | Thomas   | password |

    Given the following dishes exist
      | name      | price | description               |
      | Pizza     | 50    | A great italian pan pizza |
      | Hamburger | 40    | Tasty burger              |

  Scenario: Add a dish to order
    Given I am logged in as "Thomas" with password "password"
    And I click "Menu"
    And I click on "Add to order" for "Pizza"
    Then "Pizza" should be added to "Thomas"'s order
    Then I should see "Pizza has been added to your order"
    And I click on "Add to order" for "Hamburger"
    Then "Hamburger" should be added to "Thomas"'s order
    Then I should see "Hamburger has been added to your order"

  Scenario: Trying to add dish to order without being logged in
    Given no users exist
    And I am on the dish display page
    And I click on "Add to order" for "Pizza"
    Then I should see "You have to log in to be able to do that"
