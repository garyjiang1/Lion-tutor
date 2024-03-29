Feature: show tutors list
    As a student of the course I would like to see all tutors  
    So that I can see tutor information
    To choose which tutor I would like to meet with



Background: Tutors have been added to database

  Given the following tutors exist:
  | first_name           | last_name  | email                | phone         | bio                  | user_id
  | MD Monirul           | Islam      | im2594@columbia.edu  | 111-222-3456  | Hi! I like to teach! | 1
  | Faiza                | Khan       | fk2421@columbia.edu  | 111-222-3456  | Hi! I like to teach! | 2
  | Gary                 | Jiang      | chillg@columbia.edu  | 111-222-3456  | Hi! I'm chilling!    | 3

  And I am on the Tutors tab page
  Then 3 seed tutors should exist


Scenario: Tutors tab should be visible
    When I click Tutors
    Then I should see the list of tutors info columns
    And I should not see Tutor was successfully created message
    And I should see all the tutors


Scenario: Add Tutor to Tutors List
    When I click the sign up tab
    Then I should able to fill in Email
    And I should be able to fill in Password
    And I should be able to fill in Confirm Password
    Then I should be able to click Sign up button
    When I click Tutors
    Then I should see the list of tutors info columns
    When I press Add Another Tutor button
    Then I should see new tutor page with an option to create tutor
