@wip

Feature: User can add ingredient
  In order to expand available ingredients beyond default
  As a user
  I want to add an ingredient

  Scenario: Unable To Add Ingredient if Not Logged In
    When I go to the homepage
    And I click "Ingredients"
    Then I should not see "Add Ingredient"

  Scenario: Successful Addition
    Given the user "clyde@brewit.org" with password "mypw"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypw" for "Password"
    And I press "Sign in"
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Name" for "Rhubarb"
    And I fill in "Description" for "Tastes Rhubarby!"
    And I fill in "Ingredient Type" for "Fruit"
    And I press "Add Ingredient"
    And I click "Ingredients"
    Then I should see "Rhubarb"
    And I should see "Tastes Rhubarby!"

  Scenario: Duplicate Ingredient Name
    Given the user "clyde@brewit.org" with password "mypw"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypw" for "Password"
    And I press "Sign in"
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Name" for "Pilsner"
    And I fill in "Description" for "Deja vu"
    And I fill in "Ingredient Type" for "Grain"
    And I press "Add Ingredient"
    Then I should see "Pilsner is already assigned."

  Scenario: Name Not Provided
    Given the user "clyde@brewit.org" with password "mypw"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypw" for "Password"
    And I press "Sign in"
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Description" for "Some description"
    And I fill in "Ingredient Type" for "Grain"
    And I press "Add Ingredient"
    Then I should see "A name is required to create a new ingredient"

  Scenario: Successfully Add Yeast
    Given the user "clyde@brewit.org" with password "mypw"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypw" for "Password"
    And I press "Sign in"
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Name" for "Lacto"
    And I fill in "Description" for "I <3 Lacto!"
    And I fill in "Ingredient Type" for "Yeast"
    And I fill in "White Labs Yeast Code" for "123"
    And I fill in "Wyeast Yeast Code" for "4567"
    And I press "Add Ingredient"
    And I click "Ingredients"
    Then I should see "Lacto"
    And I should see "123"
    And I should see "4567"