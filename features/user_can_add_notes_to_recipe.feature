Feature: User can add notes to a recipe
  In order to record process details
  As a user
  I want to annotate a recipe

Scenario: Can Add Notes To Recipe
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
  And I press "Add/Modify Notes"
  And I fill in "1.061" for "Original Gravity"
  And I fill in "1.012" for "Final Gravity"
  And I fill in "72%" for "Measured Efficiency"
  And I fill in "Great brew day!" for "Notes"
  And I press "Save Notes"
  Then I should see "1.061"
  And I should see "1.012"
  And I should see "72%"
  And I should see "Great brew day!"