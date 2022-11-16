Feature: Tutors should be able to submit time availability
  Users should be able see tutor's time available, and should see a list of available meeting
  
  Background: Meetings have been added to database

  Given the following meetings exist:
  | title                | description   | start_time                | end_time   | tutor
  | meeting 1            | xxx           | 2022/11/16                | 2022/11/16 | sr3962
  

  And I am on the Tutor Profile tab page
  Then 1 seed meetings should exist

  Scenario: Tutor should be able to input availability
    When I click the Tutor Profile tab
    Then I should able to fill in Title
    And I should be able to fill in Description
    And I should be able to fill in Start Time
    And I should be able to fill in End Time
    Then I should be able to click Create Meeting button
    Then I should be able to click Back to profile
    Then I should see a list of available meetings
    And I should see available meeting information
  
  Scenario: Tutor should see all inputted availability
    When I click the Tutor Profile tab
    Then I should see a list of available meetings
    And I should see all available meeting information

   Scenario: Tutor should be able to edit availability
    When I click the Tutor Profile tab
    Then I should see a list of available meetings
    Then I should be able to click Meeting Changes
    Then I should be able to click Delete this meeting
    And I should not see all available meeting information

  Scenario: Tutor should be able to delete availability
    When I click the Tutor Profile tab
    Then I should see a list of available meetings
    Then I should be able to click Meeting Changes
    Then I should be able to click Edit this meeting
    Then I should able to edit in Title
    Then I should be able to click Update Meeting
    Then I should be able to see updated meeting
