Feature: User sign up and sign in
    Users should be able to sign in and sign up

Scenario: Sign up and Sign in tabs should be visible
    When I go to the landing page
    Then I should see the Sign Up tab
    And I should see a Sign In tab

Scenario: User should be able to sign up
    When I click the sign up tab
    Then I should able to fill in Email
    And I should be able to fill in Password
    And I should be able to fill in Confirm Password
    Then I should be able to click Sign up button
    Then I should land on the homepage
    And I should see the Welcome To Lion Tutor text