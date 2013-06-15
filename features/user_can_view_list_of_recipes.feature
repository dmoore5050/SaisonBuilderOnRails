Feature: User can view recipe
  In order to choose a recipe
  As a user
  I want to view the recipe

  Scenario: Success
    Given the user "clyde@brewit.org" with password "mypw"
    When I go to the homepage
    And I click "Log In"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypw" for "Password"
    And I press "Sign in"
    And I click "Recipes"
    And I click "Classic"
    Then I should see "9.0 lbs Pilsner"
    And I should see "1.0 lb Munich"
    And I should see "1.5 oz Styrian Goldings"
    And I should see "1.0 oz Saaz"
    And I should see "1.0 pkg Dupont Strain"