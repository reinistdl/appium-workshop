Feature: 1. Filter feature

Scenario: Validate screen without any parameters
	Given I am on create filter page
    When I open filter params
    Then I submit empty filter 

Scenario: Check if settings page is displayed
	Given I am on create filter page
    When I navigate to settings page