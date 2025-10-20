# language: en
Feature: User Login

  In order to access the application
  As a registered user
  I want to be able to log in with my credentials

  Scenario: Successful login
    Given a user with email "john.doe@example.com" and password "password123" exists
    When I enter email "john.doe@example.com" and password "password123"
    Then the login is successful
    And a JWT token is generated and returned

  Scenario: Incorrect password
    Given a user with email "john.doe@example.com" and password "password123" exists
    When I enter email "john.doe@example.com" and password "wrongpassword"
    Then the login fails
    And an error message "Incorrect password" is shown

  Scenario: Unknown user
    Given no user with email "unknown.user@example.com" exists
    When I enter email "unknown.user@example.com" and password "password123"
    Then the login fails
    And an error message "Unknown user" is shown
