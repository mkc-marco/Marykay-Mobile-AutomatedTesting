Then /^I select "([^\"]*)" environment/ do |text|
  tap_when_element_exists("android.widget.Button {text CONTAINS[c] '#{text}'}")
  tap_when_element_exists("android.widget.Button {text CONTAINS[c] '否'}")
end

Then /^I log in with correct password/ do 
  wait_for_element_exists("android.widget.Button marked:'登录'");
  sleep 5
  enter_text("android.widget.EditText index:0", '000000000065')
  enter_text("android.widget.EditText index:1", 'pink2015')
  tap_when_element_exists("android.widget.Button {text CONTAINS[c] '登录'}")
  sleep 10
end

Then /^I log in with wrong password/ do 
  wait_for_element_exists("android.widget.Button marked:'登录'");
  sleep 5
  enter_text("android.widget.EditText index:0", '000000000065')
  enter_text("android.widget.EditText index:1", 'pink')
  tap_when_element_exists("android.widget.Button {text CONTAINS[c] '登录'}")
  sleep 10
end

Then /^I log in with selected consultant/ do 
  wait_for_element_exists("android.widget.Button marked:'登录'");
  sleep 5
  clear_text_in("android.widget.EditText index:0")
  tap_when_element_exists("android.widget.Button index:0")
  tap_when_element_exists("* marked:'希妍'")
  tap_when_element_exists("android.widget.Button index:1")
  enter_text("android.widget.EditText index:1", 'pink2015')
  tap_when_element_exists("* marked:'登录'")
  sleep 10
end

Then /^I log out/ do 
  wait_for_text("希妍", timeout: 30)
  tap_when_element_exists("* marked:'希妍'")
  tap_when_element_exists("* marked:'设置'")
  tap_when_element_exists("* marked:'退出登录'")
  tap_when_element_exists("* marked:'是'")
  sleep 10
end

Then /^I should see my name/ do 
  wait_for_text("希妍", timeout: 10)
end

Then /^I should see login page/ do 
  wait_for_text("登录", timeout: 10)
end

Then /^I should not see my name/ do 
  wait_for_text_to_disappear("希妍", timeout: 10)
end
