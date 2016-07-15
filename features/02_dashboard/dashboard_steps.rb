#=========================Single Steps=============================
Then /^I am on namecard page/ do
	tap_when_element_exists("* marked:'希妍'")
end

Then /^I click the modify button/ do
	tap_when_element_exists("* marked:'修改'")
end

Then /^I click the picture placeholder/ do
	tap_when_element_exists("android.widget.Button index:0")
end

Then /^I could select the image from the gallery/ do
	tap_when_element_exists("* marked:'从手机相册选择'")
	tap_when_element_exists("android.widget.Button index:0")
	tap_when_element_exists("* marked:'确定'")
	tap_when_element_exists("* marked:'下一步'")
	tap_when_element_exists("* marked:'完成'")
	tap_when_element_exists("* marked:'保存'")
end

Then /^I should see the setting page/ do
	wait_for_text("设置", timeout: 30)
end