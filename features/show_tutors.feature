Feature: show tutors list
    As a student of the course I would like to see all tutors  
    So that I can see tutor information
    To choose which tutor I would like to meet with

Scenario: Tutors tab should be visible
    When I click Tutors
    Then I should see the list of tutors
    Then I should not see Tutor was successfully created message