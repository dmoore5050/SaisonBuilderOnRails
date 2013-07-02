Feature: User can modify a recipe
  In order to tweak an existing recipe to my taste
  As a user
  I want to modify an existing recipe

  Scenario: Happy Modify Path
    Given the user "clyde@brewit.org" with password "mypassword"
    Given the ingredient "Pilsner", type code "1"
    Given the recipe "Classic" using "9" lbs of "Pilsner"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "recipes"
    And I press "Modify"
    And I fill in "new classic" for "Name"
    And I press "Save Recipe"
    Then I should see "New Classic"

  Scenario: Happy Modify Path
    Given the user "clyde@brewit.org" with password "mypassword"
    Given the ingredient "Pilsner", type code "1"
    Given the ingredient "Saaz", type code "2"
    Given a recipe ingredient with usage "Boil"
    Given the recipe "Classic" using "9" lbs of "Pilsner"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "recipes"
    And I press "Modify"
    And I press "Add'l Ingredient"
    And I find the last "Ingredient" and choose "Saaz"
    And I find the last "Quantity" and fill in "1"
    And I find the last "Usage" and choose "Boil"
    And I find the last "Duration" and fill in "60 mins"
    And I press "Save Recipe"
    Then I should see "Pilsner"
