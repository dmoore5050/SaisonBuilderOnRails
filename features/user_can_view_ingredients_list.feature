Feature: Users can view list of ingredients
  In order to plan a recipe
  As a user
  I want to view a list of possible ingredients

  Scenario: Successful Navigation
    Given the ingredient "Dupont Strain", a "yeast"
    When I go to the homepage
    And I click "Ingredients"
    Then I should see "Ingredients List"
    And I should see "Dupont Strain"