Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=1010
    Then aircraft data to be manufacturer='Boeing' and model='777-8' and number of seats=100

  Scenario: Create an aircraft with number of seats null
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='Boeing' and model='777-8'
    Then aircraft data to be manufacturer='Boeing' and model='777-8'

  Scenario: Check if number of seats value of Aircraft is null by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=1010
    Then aircraft number of seats is null
