@Marco
Feature: 01 happy path
          
  @p1
  Scenario: 001 happy path
    Given I press the "AP - DEV - AU" button
    Then I press the "Yes" button
    Then I wait up to 300 seconds to see "Login"
    Then I clear input field number 1
    #enter consultant number
    Then I enter "047463" into input field number 1
    Then I clear input field number 2
    #enter password
    Then I enter "MKqa2015" into input field number 2
    Then I touch the "Login" text
    Then I wait up to 600 seconds to see "Ria Whitnall"
    #click login
    Then I press button number 3
    #enter last name
    Then I enter random string with length 10 into input field number 1
    Then I scroll down
    #enter frist name
    Then I enter random string with length 10 into input field number 2
    #enter preferred name
    Then I enter random string with length 10 into input field number 3
    Then I touch the "* ID Type" text
    Then I touch the "Australian Passport" text
    #enter ID number
    Then I enter random number with length 10 into input field number 4
    Then I scroll down
    Then I touch the "* Date of Birth" text
    #select year
    Then I scroll down
    Then I touch the "1998" text
    #select month
    Then I touch the "May" text
    #selct day
    Then I touch the "12" text
    #enter bank name
    Then I enter random string with length 10 into input field number 3
    Then I scroll down
    #enter BSB number
    Then I enter random number with length 3 into input field number 2
    Then I enter random number with length 3 into input field number 3
    #enter account number
    Then I enter random number with length 10 into input field number 4
    #enter account name
    Then I enter random string with length 10 into input field number 5
    Then I scroll down
    Then I touch the "Home Phone" text
    Then I touch the "02" text
    Then I enter random number with length 8 into input field number 2
    Then I touch the "Work Phone" text
    Then I touch the "03" text
    Then I enter random number with length 8 into input field number 3
    Then I scroll down
    Then I enter random number with length 10 into input field number 1
    Then I enter random email into input field number 2
    Then I enter random string with length 10 into input field number 4
    Then I scroll down
    Then I enter random string with length 10 into input field number 1
    Then I enter "1215" into input field number 2
    Then I touch the "* Suburb" text
    Then I press button number 1
    Then I press button number 5
    Then I press the "Submit" button
    Then I wait for 3 seconds
    Then I press the "Submit" button
    Then I touch the "General Terms" text
    Then I touch the "Notification" text
    Then I touch the "I confirm" text
    Then I press the "Submit" button
    Then I press the "Finish" button