Feature: Login feature

  Scenario: login in
    Then I press the "Default" button
    Then I press the "否" button
    Then I wait for 20 seconds
    Then I wait for 20 seconds
    Then I enter "000000000030" into input field number 1
    Then I enter "ywms_2015" into input field number 2
    When I press the "登录" button
    Then I take a screenshot

  Scenario:login out
    Then I press the "Default" button
    Then I press the "否" button
    Then I wait for 10 seconds
    Then I wait for 15 seconds
    Then I press "王小丽"
    Then I see the text "王小丽"
    Then I press "设置"
    Then I press "退出登录"
    Then I press "是"
  
