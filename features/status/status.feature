@status
Feature: Status page

  Background:
    Given Im on Status Page

  @status
  Scenario: Active credit card service running
    When I veirfy Active credit card service
    Then Should be displayed a success icon
