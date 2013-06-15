Feature: User can add ingredient
  In order to expand available ingredients beyond default
  As a user
  I want to add an ingredient

  Scenario: Successful Addition
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Name" with "Rhubarb"
    And I fill in "Description" with "Tastes Rhubarby!"
    And I fill in "Ingredient Type" with "Fruit"
    And I press "Add Ingredient"
    And I click "Ingredients"
    Then I should see "Rhubarb"
    And I should see "Tastes Rhubarby!"

  Scenario: Duplicate Ingredient Name
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Name" with "Pilsner"
    And I fill in "Description" with "Deja vu"
    And I fill in "Ingredient Type" with "Grain"
    And I press "Add Ingredient"
    Then I should see "Pilsner is already assigned."

  Scenario: Name Not Provided
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Description" with "Some description"
    And I fill in "Ingredient Type" with "Grain"
    And I press "Add Ingredient"
    Then I should see "A name is required to create a new ingredient"

  Scenario: Successfully Add Yeast
    When I go to the homepage
    And I click "Ingredients"
    And I press "Add Ingredient"
    And I fill in "Name" with "Lacto"
    And I fill in "Description" with "I <3 Lacto!"
    And I fill in "Ingredient Type" with "Yeast"
    And I fill in "White Labs Yeast Code" with "123"
    And I fill in "Wyeast Yeast Code" with "4567"
    And I press "Add Ingredient"
    And I click "Ingredients"
    Then I should see "Lacto"
    And I should see "123"
    And I should see "4567"

