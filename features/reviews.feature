Feature: Users should be able to review any tutor, 
each review should have corresponding linked user and tutor

  Scenario: Users should be able to review any tutor
    When I am on the home page
    Then I should see the Tutor tab
    When I click on the tutor
    Then I should see a Write a Review button
    When I click Write a Review
    And I fill out the review rating
    And I fill out the review comment
    Then I should see review created message
    And I should see average rating