@regression
Feature: Login Functionality

  Background: Preliminary steps
    Given user navigates to orangeHrm login page

  @validLogin @smoke
  Scenario: User can login with valid credentials
    When user logs in with valid username and password
    And user clicks login button
    Then user is redirected to the homepage
    * quit the driver

  @invalidLogin @smoke
  Scenario: User cannot login with invalid credentials
    When user enter invalids username and password
    And user clicks login button
    Then user can see an error message
    * quit the driver

