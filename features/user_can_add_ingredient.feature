Feature: User can add ingredient
  In order to expand available ingredients beyond default
  As a user
  I want to add an ingredient

  Scenario: Unable To Add Ingredient if Not Logged In
    When I go to the homepage
    And I click "ingredients"
    Then I should not see "Add Ingredient"

  Scenario: Successful Addition
    Given the user "clyde@brewit.org" with password "mypassword"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    When I go to the homepage
    And I click "ingredients"
    And I press "Add Ingredient"
    And I fill in "Rhubarb" for "Name"
    And I fill in "Tastes Rhubarby!" for "Description"
    And I choose "Fruit" for "Ingredient type"
    And I press "Add Ingredient"
    Then I should see "Rhubarb"
    And I should see "Tastes Rhubarby!"

  Scenario: Duplicate Ingredient Name
    Given the user "clyde@brewit.org" with password "mypassword"
    Given the ingredient "Pilsner", type code "1"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "ingredients"
    And I press "Add Ingredient"
    And I fill in "Pilsner" for "Name"
    And I fill in "Deja vu" for "Description"
    And I choose "Grain" for "Ingredient type"
    And I press "Add Ingredient"
    Then I should not see "Deja vu"

  Scenario: Name Not Provided
    Given the user "clyde@brewit.org" with password "mypassword"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    When I go to the homepage
    And I click "ingredients"
    And I press "Add Ingredient"
    And I fill in "Some description" for "Description"
    And I choose "Grain" for "Ingredient type"
    And I press "Add Ingredient"
    Then I should not see "Some description"