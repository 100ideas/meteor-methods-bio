Feature: manage methods and ontology

  as a biotechnology protocols/methods expert
  I want to create and edit methods and the method ontology (MO)
  so that I can run user experiments with method chains 

  Background:
    Given the Methods collection exists
    And the Methods collection contains methods
    And the Methods are listed on the homepage
    And the ontology is shown on the homepage

  Scenario: view list of method cards
    Given that I am on the experiment design page
    When I have no methods selected,
    Then I see a list of all the methods

  Scenario: filtering methods with compatible i/o
    Given that I am on the experiment design page
    And I have no methods selected,
    When I click a method,
    Then all methods with compatible outputs are highlighted

  Scenario: add new method

  Scenario: edit a selected method

  Scenario: edit what a term is called

  Scenario: edit how methods relate

  Scenario: edit the ontology (how terms relate) 

  Scenario: print method cards

  Scenario: use wit.ai ?