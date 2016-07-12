@Marco
Feature: 02 validation
          
  # @p1
  #   Scenario: 001 validation for personal info 
  #   Given I press the "AP - DEV - AU" button
  #   Then I press the "Yes" button
  #   Then I wait up to 300 seconds to see "Login"
  #   Then I clear input field number 1
  #   #enter consultant number
  #   Then I enter "047463" into input field number 1
  #   Then I clear input field number 2
  #   #enter password
  #   Then I enter "MKqa2015" into input field number 2
  #   Then I touch the "Login" text
  #   Then I wait up to 600 seconds to see "Ria Whitnall"
  #   #click login
  #   Then I press button number 3
  #   Then I press the "Submit" button
  #   Then I press the "OK" button
  #   Then I should see "Surnname is required"
  #   Then I enter random string with length 31 into field "* Surname"
  #   Then The text length of field number 1 should be 30
  #   Then I should not see "Surnname is required"
  #   Then I scroll down
  #   Then I should see "First Name is required"
  #   Then I enter random string with length 31 into field "* First Name"
  #   Then The text length of field number 2 should be 30
  #   Then I should not see "First Name is required"
  #   Then I should see "ID Number is required"
  #   Then I enter random number with length 16 into field "* ID Number"
  #   Then The text length of field number 4 should be 15
  #   Then I should not see "ID Number is required"
  #   Then I should see "Date of Birth is required"
  #   Then I scroll down
  #   Then I touch the "* Date of Birth" text
  #   Then I touch the "2006" text
  #   #select month
  #   Then I touch the "May" text
  #   #selct day
  #   Then I touch the "12" text
  #   Then I should not see "Date of Birth is required"
  #   Then I should see "The recruit is under the age of 18 years. Please Contact Customer Service(TEL:1800 338 006)"
  #   Then I press button number 3
  #   Then I scroll down
  #   Then I touch the "1996" text
  #   #select month
  #   Then I touch the "May" text
  #   #selct day
  #   Then I touch the "12" text
  #   Then I should not see "The recruit is under the age of 18 years. Please Contact Customer Service(TEL:1800 338 006)"
    
  @p1
    Scenario: 002 validation for bank info 
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
    Then I scroll down
    Then I scroll down
    Then I scroll down
    Then I enter random string with length 10 into field "Bank Name"
    Then I enter random number with length 1 into field "BSB Number"
    Then I should see "Please enter the BSB Number in the following format : ###-###."
    Then I enter random number with length 3 into input field number 2
    Then I enter random number with length 3 into input field number 3
    Then I should not see "Please enter the BSB Number in the following format : ###-###."
    Then I enter random number with length 3 into field "Account Number"
    Then I should see "Bank Accout Number is not valid.Please use this format : 4 to 10 Digits."
    Then I enter random number with length 4 into input field number 4
    Then I should not see "Bank Accout Number is not valid.Please use this format : 4 to 10 Digits."
    Then I wait for 600 seconds