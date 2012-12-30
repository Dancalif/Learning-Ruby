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

#==========================================================================
require 'selenium-webdriver'

Dan = Selenium::WebDriver.for :firefox
Dan.manage.timeouts.implicit_wait = 15

url = "http://www.bing.com"
query = "What is Selenium?"

Dan.navigate.to url

puts "Title of the Bing.com Page \t\t\t: #{Dan.title}"
element = Dan.find_element(:id, 'sb_form_q')
element.send_keys query
Dan.find_element(:id, 'sb_form_go').click

result_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the Bing.com Result Page \t\t: #{result_page_title.text}"
Dan.save_screenshot "1.png"

Dan.find_element(:link_text, "What Is Selenium? | eHow.com").click

new_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the eHow.com Page \t\t\t: #{new_page_title.text}"
Dan.save_screenshot "2.png"

Dan.find_element(:partial_link_text, "About eHow").click
new_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the eHow.com About Page \t\t: #{new_page_title.text}"
Dan.save_screenshot "3.png"

Dan.find_element(:partial_link_text, "eHow Blog").click
new_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the eHow.com Blog Page \t\t: #{new_page_title.text}"
Dan.save_screenshot "4.png"

Dan.find_element(:partial_link_text, "How to by Topic").click
new_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the eHow.com How to by Topic Page \t: #{new_page_title.text}"
Dan.save_screenshot "5.png"

Dan.find_element(:partial_link_text, "How to Videos").click
new_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the eHow.com How to Videos Page \t: #{new_page_title.text}"
Dan.save_screenshot "6.png"

Dan.find_element(:partial_link_text, "Sitemap").click
new_page_title = Dan.find_element(:tag_name, 'title')
puts "Title of the eHow.com Sitemap Page \t\t: #{new_page_title.text}"
Dan.save_screenshot "7.png"
Dan.quit
#==========================================================================