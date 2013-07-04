Feature: User can remove ingredient
  In order to keep only desired ingredients
  As a user
  I want to remove an ingredient

Scenario: Can Remove Recipe
  Given the user "clyde@brewit.org" with password "mypassword"
  Given the ingredient "Pilsner", type code "1"
  Given the ingredient "Munich", type code "1"
  When I go to the homepage
  And I click "log in"
  And I fill in "clyde@brewit.org" for "Email"
  And I fill in "mypassword" for "Password"
  And I press "Sign in"
  And I click "ingredients"
  And I find and press the first "Delete" button in the list
  Then I should not see "Pilsner"
  And I should see "Munich"