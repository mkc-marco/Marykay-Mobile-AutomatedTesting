@humphrey @wip
Feature: 01 namecard modification feature
  In order to test the picture function
  As a valid consultant
  I want to upload different kinds of images

#Need to login by 000000000065
  @p0
  Scenario: 001 I can modify the picture of the name card
    Given  I select "UAT" environment
    And I am on namecard page
    When I click the modify button
    And I click the picture placeholder
    Then I could select the image from the gallery
    Then I should see the setting page
