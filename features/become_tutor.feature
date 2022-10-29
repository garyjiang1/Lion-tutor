Feature: become a new tutor
    As a student of the course I would like to sign up to become a tutor    
    So that I can share my knowedge of a given topic to my classmate
    I want interested classmates to be able to choose me as their tutor

Scenario: Become a tutor tab should be visible
    When I go to the homepage
    Then I should see the Become a tutor tab

Scenario: Creating new tutor happy path
    Given I am on Become a Tutor Page
    And I fill out the tutor information
    Then I should see tutor created message
    And I should not see tutor list page

