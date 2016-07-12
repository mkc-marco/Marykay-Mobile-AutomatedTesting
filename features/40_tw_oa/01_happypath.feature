@Jen
Feature: 01 New OA Feature
          Verify User can Create a new Agreement by Native OA app.
  @p1
  Scenario: 001 Verify User can Create a new Agreement by Native OA app.    
	Given I select environment "AP - UAT - TW"
	And I select "Yes" delete old data
    And I login with account "000115" to start tw agreement
    And I input tw personal information
	And I input tw address information	
	When I confirm the information to submit
	# need upload image here	