@login
Feature: Access the system

  Background:
    Given I`m on Login screen

  @login_false
  Scenario: Login with wrong data
    When I fill username and password wrong
    Then Should be displayed a error message
