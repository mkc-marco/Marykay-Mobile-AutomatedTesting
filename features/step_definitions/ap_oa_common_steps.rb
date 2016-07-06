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
   tap_when_element_exists("android.widget.TextView marked:'* 學歷'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:3")
   sleep 1   
   tap_when_element_exists("android.widget.TextView marked:'* 身分證類型'")
   sleep 1
   tap_when_element_exists("android.widget.Button index:0")
   

end

Then /^I input address information/ do
   # input last name first name
   enter_text("android.widget.EditText index:1", random_string(6))
   enter_text("android.widget.EditText index:2", random_string(6))
   sleep 20
   # select gender
   tap_when_element_exists("android.widget.Button index:0")
   sleep 2
   tap_when_element_exists("android.widget.Button index:1")
   scroll_down
   # select collage
   tap_when_element_exists("android.widget.Button index:2")
   sleep 2
   tap_when_element_exists("android.widget.Button index:2")
   # select country
   tap_when_element_exists("android.widget.Button index:3")
   sleep 2
   tap_when_element_exists("android.widget.Button index:0")   
end