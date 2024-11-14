# Created by dmitrymk at 14.11.2024
Feature: # Enter feature name here
  # Enter feature description here

  Scenario: Create a new aircraft with all parameters
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='Sukhoi' and model='Superjet-100' and number of seats=98
    Then aircraft data to be manufacturer='Sukhoi' and model='Superjet-100' and number of seats=98
    When client gets details of just created Aircraft
