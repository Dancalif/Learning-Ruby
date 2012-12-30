#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Testing Sign Up application version 3.0"
    
    puts "#################################### "
    puts "Author \s\s\s\s\s : " + name
    puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0 .. 18]
    puts ""
    puts "Ruby version : " + RUBY_VERSION
    puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop
    puts "Description \s: " + description
    puts "#################################### "
    puts ""
}

require "watir-webdriver"
require "test/unit" 

class Sign_Up < Test::Unit::TestCase 

def setup 
  @browser = Watir::Browser.new :firefox
    url = 'http://www.alegro.com/app_v1/'
    #url = 'http://www.alegro.com/app_v2/'
    #url = 'http://www.alegro.com/app_v3/'
  @browser.goto url
end 

def teardown 
  @browser.close
end 

def test_01_title_verification
	actual_result = @browser.span(:id => "id_f_title").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_02_first_name_field_verification
	actual_result = @browser.text_field(:id => "id_fname").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_03_last_name_field_verification
	actual_result = @browser.text_field(:id => "id_lname").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_04_email_field_verification
	actual_result = @browser.text_field(:id => "id_email").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_05_phone_field_verification
	actual_result = @browser.text_field(:id => "id_phone").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_06_gender_radio_buttons_verification
	actual_result1 = @browser.radio(:value => "Male").exists?
	actual_result2 = @browser.radio(:value => "Female").exists?
	assert(actual_result1, "Element is not exist ...............")
	assert(actual_result2, "Element is not exist ...............")
end

def test_07_first_name_field_verification
	actual_result = @browser.select_list(:id => "id_state").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_08_terms_checkbox_verification
	actual_result = @browser.checkbox(:id => "id_checkbox").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_09_reset_button_verification
	actual_result = @browser.button(:value => "  Reset  ").exists?
	assert(actual_result, "Element is not exist ...............")
end

def test_10_submit_button_verification
	actual_result = @browser.button(:value => " Submit ").exists?
	assert(actual_result, "Element is not exist ...............")
end

end


