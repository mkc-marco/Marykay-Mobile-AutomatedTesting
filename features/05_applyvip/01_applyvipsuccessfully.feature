@Alina
Feature: 01 Apply VIP
          In order to Apply VIP
          As a valid user
          I want to finish online agreement

  @p1
  Scenario: 001 Apply VIP
   Given I select "UAT" environment
   And I wait for 30 seconds
   #1
   And I_go_to_OA_page

   #2
   And I_input_basicinfo
   #3
   And I_input_personinfo
   And I_input_idcard
   And I_input_phone
   And scroll_down
   #4
   And I_input_address
   And scroll_down
   And I_input_password
   And I_click_submit
   And I wait for 30 seconds 