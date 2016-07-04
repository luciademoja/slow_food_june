Feature: As a visitor
  In order to finalize my order
  I need to see a list of my dishes, a total price, pickup time and checkout button

  Background:
    Given the following users exist
      | username | password |
      | Thomas   | password |

    Given the following categories exists
      | name        |
      | Starter     |

    Given the following dishes exist
      | name      | price | description               |category    |
      | Pizza     | 50    | A great italian pan pizza |Starter     |

    Given the following order exist
      | active | user   |
      | true   | Thomas |


Scenario: Go to checkout page
  Given I am logged in as "Thomas" with password "password"
  And I am on the dish display page
  And I click "Checkout"
  Then I should be on the checkout page

Scenario: Display selected dishes
  Given I am logged in as "Thomas" with password "password"
  And I add "Pizza" to my order
  And I click "Checkout"
  #And I am on the checkout page
  #Then I have "Pizza" added to order
  #Then I should see "Pizza"
  # Then I should see a list of selected dishes
  # And a total price of the order
  # And a pickup time
