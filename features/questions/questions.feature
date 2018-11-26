Feature: Question page

  Background:
    Given Im on Question Page

  Scenario: Neon its only credit card question
    When I click in the question
    Then I should display a text:
