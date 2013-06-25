Feature: User can remove recipe
  In order to keep only desired recipes
  As a user
  I want to remove a recipe

Scenario: Can Remove Recipe
  Given the user "clyde@brewit.org" with password "mypassword"
  Given the ingredient "Pilsner", type code "1"
  Given the recipe "Classic" using "9" lbs of "Pilsner"
  Given the recipe "New World" using "8" lbs of "Pilsner"
  When I go to the homepage
  And I click "Log In"
  And I fill in "clyde@brewit.org" for "Email"
  And I fill in "mypassword" for "Password"
  And I press "Sign in"
  And I click "Recipes"
  And I find and press the first "Delete"
  Then I should not see "Classic"
  And I should see "New World"