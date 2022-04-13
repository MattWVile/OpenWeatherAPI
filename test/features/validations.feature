Feature: Api response's data holds expected values

  Scenario: Validating longitude
    Given I make an API call
    Then Longitude is a number between '-180' and '180'

  Scenario: Validating latitude
    Given I make an API call
    Then Latitude is a number between '-90' and '90'

  Scenario: Validating weather id
    Given I make an API call
    Then weather id is a number correlating to the description

  Scenario: Validating main
    Given I make an API call
    Then main is a string generally describing the weather

  Scenario: Validating description
    Given I make an API call
    Then description is a string more specifically describing the weather than main

  Scenario: Validating icon
    Given I make an API call
    Then icon is a string correlating to an icon

  Scenario: Validating temp
    Given I make an API call
    Then temp is an int between the highest and lowest recorded temperatures

  Scenario: Validating max temp
    Given I make an API call
    Then max temp is an int between the highest and lowest recorded temperatures

  Scenario: Validating min temp
    Given I make an API call
    Then min temp is an int between the highest and lowest recorded temperatures

  Scenario: Validating feels like temp
    Given I make an API call
    Then feels like is an int between the highest and lowest recorded temperatures

  Scenario: Validating min temp and max temp relationship
    Given I make an API call
    Then min temp is an int lower than max temp

  Scenario: Validating min temp and max temp relationship
    Given I make an API call
    Then min temp is an int lower than max temp

  Scenario: Validating pressure
    Given I make an API call
    Then pressure is an int between '870' and '1085'

  Scenario: Validating humidity
    Given I make an API call
    Then humidity is an int between '0' and '100'

  Scenario: Validating visibility
    Given I make an API call
    Then visibility is an int between '0' and '10000'

  Scenario: Validating wind speed
    Given I make an API call
    Then wind speed is an int between '0' and '113'

  Scenario: Validating wind degrees
    Given I make an API call
    Then wind degrees is an int between '0' and '360'

  Scenario: Validating cloud all
    Given I make an API call
    Then cloud all is an int between '0' and '100'

  Scenario: Validating DTA
    Given I make an API call
    Then DTA is an int of '10' digits

  Scenario: Validating sunrise
    Given I make an API call
    Then sunrise is an int of '10' digits

  Scenario: Validating sunset
    Given I make an API call
    Then sunset is an int of '10' digits

  Scenario: Validating country
    Given I make an API call
    Then country is an string of '2' chars

  Scenario: Validating timezone
    Given I make an API call
    Then timezone is an int between the highest and lowest timezone values

  Scenario: Validating city name
    Given I make an API call
    Then city name is the same string as the one inputted in the config file

  Scenario: Validating cod
    Given I make an API call
    Then cod is an int of '200' when the call is a success

  Scenario: Validating time between sunrise and sunset
    Given I make an API call
    Then time between sunrise and sunset is an int between the longest and shortest days of the year worldwide