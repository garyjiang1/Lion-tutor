Feature: show tutors list
    As a student of the course I would like to see all tutors  
    So that I can see tutor information
    To choose which tutor I would like to meet with


Background: Tutors have been added to database

  Given the following tutors exist:
  | first_name           | last_name  | email                | phone         | bio                  |
  | MD Monirul           | Islam      | im2594@columbia.edu  | 111-222-3456  | Hi! I like to teach! |
  | Faiza                | Khan       | fk2421@columbia.edu  | 111-222-3456  | Hi! I like to teach! |
  | Gary                 | Jiang      | chillg@columbia.edu  | 111-222-3456  | Hi! I'm chilling!    |


  And I am on the Tutors tab page
  Then 3 seed tutors should exist

Scenario: Tutors tab should be visible
    When I click Tutors
    Then I should see the list of tutors info columns
    And I should not see Tutor was successfully created message
    And I should see all the tutors

Scenario: 
    When I press Add Another Tutor button
    Then I should see new tutor page with an option to create tutor