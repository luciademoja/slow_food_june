### SlowFood (Sinatra)

Our client is a Restaurant owner that needs an website where he can list his menu and allow visitors to place orders.

#### Scope (v1)

The first version of the application has limited functionality

* The owner need to access a protected part of the application to set up information about his Restaurant and his Menu
* Menu needs to consist of many Dishes
* Each Dish is a Starter, Main course or Dessert
* Visitors of the site can add Dishes to an Order
* Order need to calculate a Total price and a Pick up time (30 minutes)

Nothing else should be considered or implemented.

#### Tools
* Sinatra as web framework
* Foundation6 as CSS framework
* PostgreSQL for database
* Warden for user authentication
* Cucumber for acceptance tests
* RSpec for unit tests


#### Install Issues
There are a some dependencies missing that will create errors when running
bundle to install the gems.

* Error message:

  `"An error occurred while installing pg (0.18.4), and Bundler cannot continue.
   Make sure that gem install pg -v '0.18.4' succeeds before bundling."`

* Solution:

  * MAC OS:

    ```
    brew install postgres
    ```
    ```
    brew install qt
    ```

    And then run:

    ```
    bundle install
    ```

    The first one solves dependency-issues with the `pg` gem and the second one
    solves dependency-issues with the `capybara web-kit`.


  * Ubuntu:
    ```
    sudo apt-get install postgresql postgresql-contrib libpq-dev
    ```
    ```
    sudo apt-get install postgresql-server-dev-9.5
    ```
    ```
    sudo apt-get install libqt4-dev libqtwebkit-dev
    ```

    This accomplishes the same things as the MAC-solution, but in Ubuntu.
