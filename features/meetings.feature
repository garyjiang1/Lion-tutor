Feature: Tutors should be able to submit time availability
  Users should be able see tutor's time available, and should see a list of available meetings

  Scenario: Tutor should be able to input availability
    When I click the Tutor Profile tab
    Then I should able to fill in Title
    And I should be able to fill in Description
    And I should be able to fill in Start Time
    And I should be able to fill in End Time
    Then I should see a list of available meetings
