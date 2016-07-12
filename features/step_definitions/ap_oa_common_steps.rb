Given /^I enter random string with length (\d+) into input field number (\d+)$/ do |len, index|
    enter_text("android.widget.EditText index:#{index.to_i-1}", random_string(len.to_i))
end

Then /^I enter random number with length (\d+) into input field number (\d+)$/ do |len, index|
    enter_text("android.widget.EditText index:#{index.to_i-1}", random_number(len.to_i))
end

Then /^I enter random email into input field number (\d+)$/ do |index|
  email=random_email
    enter_text("android.widget.EditText index:#{index.to_i-1}", email)
    enter_text("android.widget.EditText index:#{index.to_i}", email)
end

Then /^The text length of field number (\d+) should be (\d+)$/ do |index,len|
  check_text_length(index.to_i,len.to_i)
end

Then /^I enter "([^\"]*)" into field "([^\"]*)"$/ do |text, query_string|
  enter_text("TextView marked:'#{query_string}' sibling RelativeLayout child EditText", text)
end

Then /^I enter random string with length (\d+) into field "([^\"]*)"$/ do |len, query_string|
  enter_text("android.widget.TextView marked:'#{query_string}' sibling RelativeLayout child EditText", random_string(len.to_i))
end

Then /^I enter random number with length (\d+) into field "([^\"]*)"$/ do |len, query_string|
    enter_text("android.widget.TextView marked:'#{query_string}' sibling RelativeLayout child EditText", random_number(len.to_i))
end

Then /^I select environment "([^\"]*)"/ do |text|
  wait_for_element_exists("android.widget.Button marked:'AP - UAT - TW'");
  tap_when_element_exists("android.widget.Button marked:'#{text}'")
end

Then /^I select "([^\"]*)" delete old data/ do |text|  
  tap_when_element_exists("android.widget.Button marked:'#{text}'")
end

Then /^I login with account "([^\"]*)" to start tw agreement/ do |text|
  wait_for_element_exists("android.widget.TextView marked:'Login'");  
  enter_text("android.widget.EditText marked:'Consultant Number'",text)
  enter_text("android.widget.EditText index:1", 'MKuat2015')
  tap_when_element_exists("android.widget.Button index:2")
  sleep 10
  #Select New agrement option.
  wait_for_element_exists("android.widget.TextView marked:'#{text}'");  
  tap_when_element_exists("android.widget.Button index:2")
  sleep 5
  while element_does_not_exist("android.widget.TextView marked:'上述檔案須一式兩份，一份供您自行保存以確保您可隨時查閱您的權利與義務，另一份提交至公司。'") do
  scroll_down
  end
  wait_for_element_exists("android.widget.TextView marked:'上述檔案須一式兩份，一份供您自行保存以確保您可隨時查閱您的權利與義務，另一份提交至公司。'");  
  tap_when_element_exists("android.widget.Button index:1")
  tap_when_element_exists("android.widget.Button index:2")
  tap_when_element_exists("android.widget.Button marked:'我同意並繼續申請'") 
  sleep 3
end

Then /^I input tw personal information/ do  
   tap_when_element_exists("android.widget.EditText index:0")
   enter_text("android.widget.EditText index:0", random_string(6))
   scroll_down
   tap_when_element_exists("android.widget.EditText index:1")
   enter_text("android.widget.EditText index:1", random_string(6))
   sleep 5
   # select random_string
   tap_when_element_exists("android.widget.TextView marked:'* 性别'")
   sleep 1
   tap_when_element_exists("android.widget.TextView marked:'女'")   
   # select collage
   tap_when_element_exists("android.widget.TextView marked:'* 學歷'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:2")
   # select country
   tap_when_element_exists("android.widget.TextView marked:'* 國籍'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:0")
   sleep 1   
   tap_when_element_exists("android.widget.TextView marked:'* 身分證類型'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:0")
   enter_text("android.widget.EditText index:2", get_tw_gov_id) 
   hide_soft_keyboard 
   scroll_down
   tap_when_element_exists("android.widget.TextView marked:'* 出生日期'")
   scroll_down
   sleep 2
   tap_when_element_exists("android.widget.TextView marked:'1998'")
   sleep 1
   tap_when_element_exists("android.widget.TextView marked:'02'")
   sleep 1
   tap_when_element_exists("android.widget.TextView marked:'09'") 
   enter_text("android.widget.EditText index:1", random_number(8))
   hide_soft_keyboard
   enter_text("android.widget.EditText index:3", random_email)    
   sleep 2   
end

Then /^I input tw address information/ do
   while element_does_not_exist("android.widget.TextView marked:'地址2'") do
   scroll_down
   end   
   tap_when_element_exists("android.widget.TextView marked:'* 縣市'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:2")
   sleep 1
   tap_when_element_exists("android.widget.TextView marked:'* 區鄉鎮'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:2")
   scroll_down
   enter_text("android.widget.EditText index:1", random_string(6))   
   hide_soft_keyboard
   enter_text("android.widget.EditText index:2", random_string(6))   
   scroll_down
   tap_when_element_exists("android.widget.Button index:2")
   sleep 3   
   tap_when_element_exists("android.widget.TextView marked:'* 你的配偶是否為玫琳凱美容顧問？'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:1")
   while element_does_not_exist("android.widget.Button marked:'提交'") do
   scroll_down
   end          
end

Then /^I confirm the information to submit/ do
   tap_when_element_exists("android.widget.Button marked:'提交'")
   sleep 3
   while element_does_not_exist("android.widget.Button marked:'所輸入之個人資料均屬加入人本人並正確無誤確認'") do
   scroll_down
   end
   tap_when_element_exists("android.widget.Button index:0")
   tap_when_element_exists("android.widget.Button marked:'确认提交'")
   sleep 3   
end

Then /^I upload images/ do
   # need to implement how to upload pictures here
   tap_when_element_exists("android.widget.Button marked:'上傳' index:0")
   tap_when_element_exists("android.widget.Button marked:'上傳' index:1")
   tap_when_element_exists("android.widget.Button marked:'上傳' index:2")
end