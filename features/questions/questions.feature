@questions
Feature: Questions page

  Background:
    Given Im on Questions Page

  @credit_only_question
  Scenario: Neon its only credit card question
    When I click in the question
    Then I should display a text about Neon its only credit card question
