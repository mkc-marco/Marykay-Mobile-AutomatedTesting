@humphrey
Feature: 02 category navigation feature
  In order to view products belong to different categories
  As a valid consultant
  I want to switch the category and subcategory

#Need to login first
  @p0
  Scenario Outline: 001 I can switch thecategory and subcategory
    Given  I select "UAT" environment
    And I am on category page
    When I switch the category to "<category>"'
    And I switch the subcategory to "<subcategory>"
    Then I should see the search result as "<productname>"

    Examples:
      |category|subcategory|productname|
      |经典护肤|保护|经典护肤系列|
      |补充性保养|面霜|水柔新肤霜|
      |脸部彩妆|腮红|纯色腮红|
      |辅助工具|包装用品|礼盒|