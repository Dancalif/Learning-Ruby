#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Exploring the functionality of website using selenium webdriver and firefox"
    
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


require 'selenium-webdriver'


Dan = Selenium::WebDriver.for :firefox	

wait = 

Dan.manage.timeouts.implicit_wait = 15

#===================================================================


url = 'http://www.bing.com'

query = "Quality Assurance SQA"



# Open Dan (firefox)


Dan.navigate.to url



puts "Title of the Bing.com Page \t\t\t: #{Dan.title}"


Dan.find_element(:id, 'sb_form_q').send_keys query

Dan.find_element(:id, "sb_form_go").click



result_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Bing.com Result Page \t\t: #{result_page_title.text}"
	
Dan.save_screenshot "1A.png"



Dan.find_element(:link_text, "SQA | Home").click

	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the SQA Home Page \t\t\t: #{new_page_title.text}"
	
Dan.save_screenshot "2A.png"

	
Dan.find_element(:partial_link_text, "Join SQA").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Join SQA Page \t\t: #{new_page_title.text}"
	
Dan.save_screenshot "3A.png"

	

Dan.find_element(:partial_link_text, "Advertising Opportunities").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Advertising Opportunities Page \t\t: #{new_page_title.text}"
	
Dan.save_screenshot "4A.png"
	

Dan.find_element(:partial_link_text, "Privacy Policy").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Privacy Policy Page \t: #{new_page_title.text}"
	
Dan.save_screenshot "5A.png"



Dan.find_element(:partial_link_text, "Search").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Search Page \t: #{new_page_title.text}"
	
Dan.save_screenshot "6A.png"
	


Dan.find_element(:partial_link_text, "Site Map").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Site Map Page \t\t: #{new_page_title.text}"
	

Dan.find_element(:partial_link_text, "Contact Us").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Contact Us Page \t\t: #{new_page_title.text}"
	

Dan.find_element(:partial_link_text, "Home").click
	

new_page_title = Dan.find_element(:tag_name, 'title')
	
puts "Title of the Home Page \t\t: #{new_page_title.text}"
	

Dan.save_screenshot "7A.png"



# Close Dan


Dan.quit
