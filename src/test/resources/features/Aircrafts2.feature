# Created by dmitrymk at 14.11.2024
Feature:


  Scenario Outline: Create a new aircraft with all parameters
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer=<manufacturer> and model=<model> and number of seats=<numberOfSeats>
    When client gets details of just created Aircraft
    Then aircraft data to be manufacturer=<manufacturer> and model=<model> and number of seats=<numberOfSeats>
    Examples:
      | manufacturer | model        | numberOfSeats |
      | 'qqqqqqqqqq' | 'qqqqqqqqqq' | 100           |


  Scenario Outline: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=<id>
    Then aircraft data to be manufacturer=<manufacturer> and model=<model> and number of seats=<numberOfSeats>
    Examples:
      | id   | manufacturer | model   | numberOfSeats |
      | 821 | 'Washington Dynamics'     | '16' | 52          |
      | 901 | 'Boston Dynamics'     | '45' | 45           |