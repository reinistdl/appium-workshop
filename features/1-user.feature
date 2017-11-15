Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open on Transports category
    Then I open sub cat Vieglie auto
    Then I open sub cat Audi
    Then I open sub cat Audi A1
    Then I open sub cat Visi
    Then I am on parameters page
    And I set filter parameters
    
Scenario: Check created filter
	Given I am on additional filter page
	When I am on create filter page
	Then I open side menu
	Then I open Meklēšanas filtri from menu
	When I am on Meklēšanas filtri page
	Then I select saved filter Test Name
	Then I am on saved filter Test Name page
	And I select delete for filter Test Name 