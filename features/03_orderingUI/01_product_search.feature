@humphrey
Feature: 01 product search feature
  In order to search needed products
  As a valid consultant
  I want to search by product name, product id, effective an description.

#Need to login first
  @p0
  Scenario Outline: 001 I can search the products by different criteria
    Given  I select "UAT" environment
    And I am on search page
    When I search by "<criteria>"
    Then I should see the search result as "<productname>"

  Examples:
    |criteria|productname|
    |10049750|柔性洗面霜|
    |柔性洗面霜|柔性洗面霜|
    |亚麻籽提取物|柔性洗面霜|
    |清洁，干性肌肤适用|柔性洗面霜|