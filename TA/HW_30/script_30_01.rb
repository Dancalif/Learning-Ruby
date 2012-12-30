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
#==========================================================================================
require 'watir-webdriver'
#==========================================================================================
browser = Watir::Browser.new :firefox
#==========================================================================================
browser.driver.manage.timeouts.implicit_wait = 60
#==========================================================================================
url = 'http://www.bing.com'
query = "What is Selenium?"
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
browser.link(:text => /eHow.com/).click
browser.screenshot.save "03.png"
puts "========================================"
puts "Title of eHow.com page: #{browser.title}"
puts "URL of eHow.com page: #{browser.url}"
#==========================================================================================
browser.link(:text => /About eHow/).click
browser.screenshot.save "04.png"
puts "========================================"
puts "Title of About eHow.com page: #{browser.title}"
puts "URL of About eHow.com page: #{browser.url}"
#==========================================================================================
browser.link(:text => /eHow Blog/).click
browser.screenshot.save "05.png"
puts "========================================"
puts "Title of eHow Blog page: #{browser.title}"
puts "URL of eHow Blog page: #{browser.url}"
#==========================================================================================
browser.link(:text => /How to Videos/).click
browser.screenshot.save "07.png"
puts "========================================"
puts "Title of How To Videos page: #{browser.title}"
puts "URL of How To Videos page: #{browser.url}"
#==========================================================================================
browser.link(:text => /Sitemap/).click
browser.screenshot.save "08.png"
puts "========================================"
puts "Title of Sitemap page: #{browser.title}"
puts "URL of Sitemap page: #{browser.url}"

#==========================================================================================
browser.close
