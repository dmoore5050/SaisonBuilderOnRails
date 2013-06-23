@wip

Feature: User can modify a recipe
  In order to tweak an existing recipe to my taste
  As a user
  I want to modify an existing recipe

  Scenario: Happy Modify Path
    Given the user "clyde@brewit.org" with password "mypassword"
    Given the ingredient "Pilsner", type code "1"
    Given the recipe "Classic" using "9" lbs of "Pilsner"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "Recipes"
    And I press "Modify"
    And I fill in "new classic" for "Name"
    And I press "Save Recipe"
    Then I should see "New Classic"
