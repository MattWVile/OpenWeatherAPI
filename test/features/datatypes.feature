Feature: Api response gives expected data

  Scenario: Checking lon
    Given I make an API call
    Then Lon returns a Float value

  Scenario: Checking lat
    Given I make an API call
    Then Lat returns a Float value

  Scenario: Checking weather id
    Given I make an API call
    Then weather id returns an int value

  Scenario: Checking main
    Given I make an API call
    Then main returns an int value

  Scenario: Checking description
    Given I make an API call
    Then description returns a string value

  Scenario: Checking icon
    Given I make an API call
    Then icon returns a string value

  Scenario: Checking base
    Given I make an API call
    Then base returns a string value

  Scenario: Checking temp
    Given I make an API call
    Then temp returns a float or int value

  Scenario: Checking feels like
    Given I make an API call
    Then feels like returns a float or int value

  Scenario: Checking temp min
    Given I make an API call
    Then temp min returns a float or int value

  Scenario: Checking temp max
    Given I make an API call
    Then temp max returns a float or int value

  Scenario: Checking pressure
    Given I make an API call
    Then pressure returns an int value

  Scenario: Checking humidity
    Given I make an API call
    Then humidity returns an int value

  Scenario: Checking visibility
    Given I make an API call
    Then visibility returns an int value

  Scenario: Checking wind speed
    Given I make an API call
    Then speed returns a float  value

  Scenario: Checking wind degrees
    Given I make an API call
    Then wind degrees returns an int value

  Scenario: Checking all
    Given I make an API call
    Then all returns an int value

  Scenario: Checking dt
    Given I make an API call
    Then dt returns an int value

  Scenario: Checking type
    Given I make an API call
    Then type returns an int value

  Scenario: Checking system id
    Given I make an API call
    Then system id returns an int value

  Scenario: Checking country
    Given I make an API call
    Then country returns a string value

  Scenario: Checking sunrise
    Given I make an API call
    Then sunrise returns an int value

  Scenario: Checking sunset
    Given I make an API call
    Then sunset returns an int value

  Scenario: Checking timezone
    Given I make an API call
    Then timezone returns an int value

  Scenario: Checking id
    Given I make an API call
    Then id returns an int value

  Scenario: Checking name
    Given I make an API call
    Then name returns a string value

  Scenario: Checking cod
    Given I make an API call
    Then cod returns an int value