Feature: User can view recipe and recipe list
  In order to choose a recipe
  As a user
  I want to view the recipe

  Scenario: Anonymous User Can View Recipe List
    Given no user and the ingredient "Pilsner", type code "1"
    Given no user and the ingredient "Pale Malt", type code "1"
    Given no user and the recipe "Classic" using "9" lbs of "Pilsner"
    Given no user and the recipe "New World" using "8" lbs of "Pale Malt"
    When I go to the homepage
    And I click "recipes"
    Then I should see "Classic"
    And I should see "New World"


  Scenario: Can View Recipe List
    Given the user "clyde@brewit.org" with password "mypassword"
    Given the ingredient "Pilsner", type code "1"
    Given the ingredient "Pale Malt", type code "1"
    Given the recipe "Classic" using "9" lbs of "Pilsner"
    Given the recipe "New World" using "8" lbs of "Pale Malt"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "recipes"
    Then I should see "Classic"
    And I should see "New World"


  Scenario: Can View Recipe
    Given the user "clyde@brewit.org" with password "mypassword"
    Given the ingredient "Pilsner", type code "1"
    Given the recipe "Classic" using "9" lbs of "Pilsner"
    When I go to the homepage
    And I click "log in"
    And I fill in "clyde@brewit.org" for "Email"
    And I fill in "mypassword" for "Password"
    And I press "Sign in"
    And I click "recipes"
    And I click "Classic"
    Then I should see "9.0 lbs Pilsner"