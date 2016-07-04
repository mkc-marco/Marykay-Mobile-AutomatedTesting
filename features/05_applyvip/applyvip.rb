
Then /^I_go_to_OA_page/ do 
  sleep 2
  tap_when_element_exists("* marked:'注册VIP顾客'")
  sleep 2
  tap_when_element_exists("* marked:'我同意'")
  sleep 2
end
Then /^I_input_basicinfo/ do 
  wait_for_element_exists("* marked:'* 注册地'")
  tap_when_element_exists("* marked:'* 注册地'")
  tap_when_element_exists("* marked:'上海'")
  tap_when_element_exists("* marked:'上海'")
  sleep 2
  tap_when_element_exists("* marked:'* 推荐您的美容顾问编号'")
  enter_text("android.widget.EditText index:0", '320000051767')
  hide_soft_keyboard
  sleep 2
end

Then /^I_input_personinfo/ do 
  enter_text("android.widget.EditText index:1", randomusername)
  hide_soft_keyboard
  enter_text("android.widget.EditText index:2", 'firstname')
  hide_soft_keyboard
  tap_when_element_exists("* marked:'* 您的民族'")
  tap_when_element_exists("* marked:'汉'")
  tap_when_element_exists("* marked:'* 您的职业'")
  tap_when_element_exists("* marked:'其他'")
end

Then /^I_input_idcard/ do 
  enter_text("android.widget.EditText index:3", randomchinaidcard)
  hide_soft_keyboard
end
Then /^I_input_phone/ do 
  enter_text("android.widget.EditText index:4", randomphonenumber)
  hide_soft_keyboard
end
Then /^I_input_address/ do 
  tap_when_element_exists("* marked:'* 身份证的省-市-区'")
  tap_when_element_exists("* marked:'上海'")
  tap_when_element_exists("* marked:'上海'")
  tap_when_element_exists("* marked:'徐汇区'")
  sleep 2
  tap_when_element_exists("* marked:'* 通信地址'")
  tap_when_element_exists("* marked:'上海'")
  tap_when_element_exists("* marked:'上海'")
  tap_when_element_exists("* marked:'徐汇区'")
  scroll_down
  enter_text("android.widget.EditText index:2", '000000')
  hide_soft_keyboard
  enter_text("android.widget.EditText index:3", '000000')
  hide_soft_keyboard
end
Then /^I_input_password/ do 
  enter_text("android.widget.EditText index:4", 'pink2015')
  hide_soft_keyboard
  enter_text("android.widget.EditText index:5", 'pink2015')
  hide_soft_keyboard
  tap_when_element_exists("* marked:'* 密码找回问题'")
  tap_when_element_exists("* marked:'您就读的第一所学校名称？'")
  enter_text("android.widget.EditText index:6", 'answer')
  hide_soft_keyboard
end
Then /^I_click_submit/ do 
  tap_when_element_exists("* marked:'注册'")
  sleep 2
  tap_when_element_exists("* marked:'我要提交'")
  tap_when_element_exists("* marked:'暂不验证，继续提交'")
end



Then /^hide_soft_keyboard/ do 
  hide_soft_keyboard
end

Then /^scroll_down/ do 
  scroll_down 
end


