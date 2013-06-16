Feature: User can view recipe
  In order to choose a recipe
  As a user
  I want to view the recipe

  Scenario: Can View Recipe List
    Given the user "clyde@brewit.org" with password "mypassword"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "Recipes"
    Then I should see "Classic"
    And I should see "New World"


  Scenario: Can View Recipe
    Given the user "clyde@brewit.org" with password "mypassword"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "Recipes"
    And I click "Classic"
    Then I should see "9.0 lbs Pilsner"
    And I should see "1.0 lb Munich"
    And I should see "1.5 oz Styrian Goldings"
    And I should see "1.0 oz Saaz"
    And I should see "1.0 pkg Dupont Strain"