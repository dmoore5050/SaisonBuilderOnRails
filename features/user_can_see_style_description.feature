Feature: User can see style description
  In order to learn about Saisons
  As a user
  I want to view a description of the Saison style

  Scenario: Successful Navigation
    When I go to the homepage
    And I click "learn"
    And I press "About Saisons"
    Then I should see "Saison: A Description"
    And I should see "Hopfenstark"