Feature: 1. Filter feature

Scenario: Create transports filter
    Given I am on create filter page
    When I open transports filter params
    Then I submit transports filter

Scenario: Delete transports filter
    Given I am on create filter page
    When I open saved filter page
    Then I delete saved transports filter

Scenario: Create nekustamie filter
    Given I am on create filter page
    When I open nekustamie filter params
    Then I submit nekustamie filter

Scenario: Delete nekustamie filter
    Given I am on create filter page
    When I open saved filter page
    Then I delete saved nekustamie filter

Scenario: Create vakances filter
    Given I am on create filter page
    When I open vakances filter params
    Then I submit vakances filter

Scenario: Delete vakances filter
    Given I am on create filter page
    When I open saved filter page
    Then I delete saved vakances filter