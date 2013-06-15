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
    And I fill in "Rhubarb" for "Name"
    And I fill in "Tastes Rhubarby!" for "Description"
    And I fill in "Fruit" for "Ingredient type"
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
    And I fill in "Pilsner" for "Name"
    And I fill in "Deja vu" for "Description"
    And I fill in "Grain" for "Ingredient type"
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
    And I fill in "Some description" for "Description"
    And I fill in "Grain" for "Ingredient type"
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
    And I fill in "Lacto" for "Name"
    And I fill in "I <3 Lacto!" for "Description"
    And I fill in "Yeast" for "Ingredient type"
    And I fill in "123" for "White Labs Yeast Code"
    And I fill in "4567" for "Wyeast Yeast Code"
    And I press "Add Ingredient"
    And I click "Ingredients"
    Then I should see "Lacto"
    And I should see "123"
    And I should see "4567"