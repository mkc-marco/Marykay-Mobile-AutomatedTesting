Feature: 01 login feature
          In order to simulate login activities
          As a valid consultant
          I want to login, logout and re-login

  Scenario: 001 I can not log into my app with wrong password
   Given I press the "Internal - UAT" button
   And I press the "否" button
   And I wait for the "登录" button to appear
   And I wait for 5 seconds
   When I enter "000000000065" into input field number 1
   And I enter "pink" into input field number 2
   And I press the "登录" button
   And I wait for 10 seconds
   Then I don't see "希妍"

  Scenario: 002 I can log into my app with correct password
   Given I press the "Internal - UAT" button
   And I press the "否" button
   And I wait for the "登录" button to appear
   And I wait for 10 seconds
   When I clear input field number 1
   And I enter "000000000065" into input field number 1
   And I enter "pink2015" into input field number 2
   And I press the "登录" button
   And I wait for "希妍" to appear
   And I wait for 10 seconds
   And I press "希妍"
   Then I see "希妍"

  Scenario: 003 I can re-log into my app automatically and log out
    Given I press the "Internal - UAT" button
    And I press the "否" button
    And I wait for "希妍" to appear
    When I press "希妍"
    And I press "设置"
    And I press "退出登录"
    And I press "是"
    And I wait for 10 seconds
    Then I see "登录"

  Scenario: 004 I could switch the account and view the password and then login in
    Given I press the "Internal - UAT" button
    And I press the "否" button
    And I wait for the "登录" button to appear
    And I wait for 10 seconds
    When I clear input field number 1
    And I press button number 1
    And I press "希妍"
    And I press button number 2
    And I enter "pink2015" into input field number 2
    And I press the "登录" button
    And I wait for 10 seconds
    Then I see "希妍"

  #re-run the scenario to log out the app
  Scenario: 003 I can re-log into my app automatically and log out
    Given I press the "Internal - UAT" button
    And I press the "否" button
    And I wait for "希妍" to appear
    When I press "希妍"
    And I press "设置"
    And I press "退出登录"
    And I press "是"
    And I wait for 10 seconds
    Then I see "登录"