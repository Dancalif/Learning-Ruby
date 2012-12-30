#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Exploring the functionality of website using watir webdriver and firefox"
    
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
#==========================================================================================
require 'watir-webdriver'
#==========================================================================================
browser = Watir::Browser.new :firefox
#==========================================================================================
browser.driver.manage.timeouts.implicit_wait = 60
#==========================================================================================
url = 'http://www.bing.com'
query = "Quality Assurance"
#==========================================================================================
browser.goto url
puts "========================================"
puts "Title of bing.com: #{browser.title}"
puts "URL of bing.com: #{browser.url}"
#==========================================================================================
browser.screenshot.save "01.png"
browser.text_field(:id, "sb_form_q").set query
browser.button(:id, "sb_form_go").click
#==========================================================================================
browser.screenshot.save "02.png"
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
#==========================================================================================
#browser.link(:text => "What Is Selenium? | eHow.com").click
browser.link(:text => /SQA | Home/).click
browser.screenshot.save "03.png"
puts "========================================"
puts "Title of SQA | Home page: #{browser.title}"
puts "URL of SQA | Home page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Join SQA/).click
browser.screenshot.save "04.png"
puts "========================================"
puts "Title of Join SQA page: #{browser.title}"
puts "URL of Join SQA page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Advertising Opportunities/).click
browser.screenshot.save "05.png"
puts "========================================"
puts "Title of Adevertising Opportunities page: #{browser.title}"
puts "URL of Adevertising Opportunities page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Privacy Policy/).click
browser.screenshot.save "06.png"
puts "========================================"
puts "Title of Privacy Policy page: #{browser.title}"
puts "URL of Privacy Policy page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Search/).click
browser.screenshot.save "07.png"
puts "========================================"
puts "Title of Search page: #{browser.title}"
puts "URL of Search page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Site Map/).click
browser.screenshot.save "08.png"
puts "========================================"
puts "Title of Site Map page: #{browser.title}"
puts "URL of Site Map page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Contact Us/).click
browser.screenshot.save "09.png"
puts "========================================"
puts "Title of Contact Us page: #{browser.title}"
puts "URL of Contact Us page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Home/).click
browser.screenshot.save "10.png"
puts "========================================"
puts "Title of Home page: #{browser.title}"
puts "URL of Home page: #{browser.url}"

#==========================================================================================
browser.close
