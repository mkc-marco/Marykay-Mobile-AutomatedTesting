@humphrey
Feature: 01 login feature
          In order to simulate login activities
          As a valid consultant
          I want to login, logout and re-login
  @p1
  Scenario: 001 I can not log into my app with wrong password
    Given I select "UAT" environment
    When I log in with wrong password
    Then I should not see my name
  @p0
  Scenario: 002 I can log into my app with correct password
    Given I select "UAT" environment
    When I log in with correct password
    Then I should see my name
  @p0
  Scenario: 003 I can re-log into my app automatically and log out
    Given I select "UAT" environment
    When I log out
    Then I should see login page
  @p1
  Scenario: 004 I could switch the account and view the password and then login in
    Given I select "UAT" environment
    When I log in with selected consultant
    Then I should see my name
  #re-run the scenario to log out the app
  @p1
  Scenario: 003 I can re-log into my app automatically and log out
    Given I select "UAT" environment
    When I log out
    Then I should see login page
