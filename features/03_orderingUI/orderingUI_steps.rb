#=========================Multiple Steps=============================
Then /^I am on search page/ do
  # Look ma, no quotes!
  # Easier to do "extract steps from plain text" refactorings with cut and paste!
  steps %Q{
    Given I open orderingUI module
    And I open product catalog page
    And I open search page
  }
end

Then /^I am on category page/ do
  # Look ma, no quotes!
  # Easier to do "extract steps from plain text" refactorings with cut and paste!
  steps %Q{
    Given I open orderingUI module
    And I open product catalog page
  }
end


#=========================Single Steps=============================
Then /^I open orderingUI module/ do
  tap_when_element_exists("* marked:'我的订单'")
end

Then /^I open product catalog page/ do
	tap_when_element_exists("* marked:'产品目录'")
end

Then /^I open search page/ do
    tap_when_element_exists("android.widget.Button index:13")
end

Then /^I search by "(.*?)"/ do |criteria| 
	enter_text("android.widget.EditText index:0", criteria)
	press_user_action_button('search')
end

Then /^I should see the search result as "(.*?)"/ do |productname|
	wait_for_text(productname, timeout: 30)
end

Then /^I switch the category to "(.*?)"/ do |category| 
	tap_when_element_exists("* marked:'幻时系列'")
	tap_when_element_exists("* marked:'#{category}'")
end

Then /^I switch the subcategory to "(.*?)"/ do |subcategory| 
	tap_when_element_exists("* marked:'全部产品'", timeout:30)
	tap_when_element_exists("* marked:'#{subcategory}'")
end

