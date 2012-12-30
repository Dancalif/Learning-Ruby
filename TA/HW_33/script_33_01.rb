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

#==========================================================================================
require 'watir-webdriver'
#==========================================================================================
browser = Watir::Browser.new :firefox
#==========================================================================================
browser.driver.manage.timeouts.implicit_wait = 15
#==========================================================================================
browser.window.move_to(0, 0)
browser.window.resize_to(1000, 800)
browser.cookies.clear
#==========================================================================================
url = 'http://www.alegro.com/app_v1/'
# url = 'http://www.alegro.com/app_v2'

browser.goto url

                                  puts "========Quotes verification=================================="
# Test Case: Quotes existing

quote = browser.td(:id => "id_quotes")
if browser.td(:id => "id_quotes").exists? and quote.text.size > 0
    puts "Test Case: Quotes existing - Passed!"
else
    puts "Test Case: Quotes existing - Failed!"
end

# Test Case: Quotes changing

browser.screenshot.save 'quotes1.png'
puts quote.text
# if quote.text.include?("a")

browser.refresh
quote = browser.td(:id => "id_quotes")
browser.screenshot.save 'quotes2.png'
puts quote.text

                                   puts "======Title verification==================================="
# Test Case: Title verification
if browser.title == "Sign Up"
    puts "Test Case: Title verification - Passed!"
else
    puts "Test Case: Title verification - Failed!"
end

                                   puts "========Links Verification  -  Facebook ==================="
# Test Case: Facebook link verification
if browser.link(:id => "id_link_facebook").href == "http://www.facebook.com/"
    puts "Test Case: Facebook Link verification  - Passed!"
else
    puts "Test Case: Link verification - Failed!"
	actual_link_href = browser.link(:id => "id_link_facebook").href
	puts "Expected: http://www.facebook.com/ == Actual: #{actual_link_href}"
end
puts "===="
# Test Case: Facebook image verification
# if browser.image(:alt => "Facebook").exists?
if browser.image(:src => "./facebook.png").exists?
    puts "Test Case: Facebook image verification  - Passed!"
	image_h = browser.image(:src => "./facebook.png").height
	image_w = browser.image(:src => "./facebook.png").width
	puts "Facebook Image dimensions: height - #{image_h} and width - #{image_w}"
else
    puts "Test Case: Facebook image verification - Failed!"
end

                                    puts "= Links Verification  -  Twitter ==============================="
# Test Case: Twitter link verification
if browser.link(:id => "id_link_twitter").href == "http://www.twitter.com/"
    puts "Test Case: Twitter Link verification  - Passed!"
else
    puts "Test Case: Link verification - Failed!"
	actual_link_href = browser.link(:id => "id_link_twitter").href
	puts "Expected: http://www.twitter.com/ == Actual: #{actual_link_href}"
end
puts "===="
# Test Case: Twitter image verification
# if browser.image(:alt => "Twitter").exists?
if browser.image(:src => "./twitter.png").exists?
    puts "Test Case: Twitter image verification  - Passed!"
	image_h = browser.image(:src => "./twitter.png").height
	image_w = browser.image(:src => "./twitter.png").width
	puts "Twitter Image dimensions: height - #{image_h} and width - #{image_w}"
else
    puts "Test Case: twitter image verification - Failed!"
end

                                    puts "= Links Verification  -  Flickr ==============================="
# Test Case: Flickr link verification
if browser.link(:id => "id_link_flickr").href == "http://www.flickr.com/"
    puts "Test Case: Flickr Link verification  - Passed!"
else
    puts "Test Case: Link verification - Failed!"
	actual_link_href = browser.link(:id => "id_link_flickr").href
	puts "Expected: http://www.flickr.com/ == Actual: #{actual_link_href}"
end
puts "===="
# Test Case: Flickr image verification
# if browser.image(:alt => "Flickr").exists?
if browser.image(:src => "./flickr.png").exists?
    puts "Test Case: Flickr image verification  - Passed!"
	image_h = browser.image(:src => "./flickr.png").height
	image_w = browser.image(:src => "./flickr.png").width
	puts "Flickr Image dimensions: height - #{image_h} and width - #{image_w}"
else
    puts "Test Case: flickr image verification - Failed!"
end

                                            puts "= Links Verification  -  Youtube ==============================="
# Test Case: Youtube link verification
if browser.link(:id => "id_link_youtube").href == "http://www.youtube.com/"
    puts "Test Case: Youtube Link verification  - Passed!"
else
    puts "Test Case: Link verification - Failed!"
	actual_link_href = browser.link(:id => "id_link_youtube").href
	puts "Expected: http://www.youtube.com/ == Actual: #{actual_link_href}"
end
puts "===="
# Test Case: Youtube image verification
# if browser.image(:alt => "Youtube").exists?
if browser.image(:src => "./youtube.png").exists?
    puts "Test Case: Youtube image verification  - Passed!"
	image_h = browser.image(:src => "./youtube.png").height
	image_w = browser.image(:src => "./youtube.png").width
	puts "Youtube Image dimensions: height - #{image_h} and width - #{image_w}"
else
    puts "Test Case: youtube image verification - Failed!"
end

                                puts "=======Link verification============================================="
# Test Case: Link verification
#if browser.link(:id => "id_link_rubygems").exists?
if browser.link(:text => "rubygems.org::output-to-file").exists?
    puts "Test Case: Rubygems Link verification  - Passed!"
	href = browser.link(:text => "rubygems.org::output-to-file").href
	target = browser.link(:text => "rubygems.org::output-to-file").target
	puts "Link href: #{href} and Link target: #{target}"
else
    puts "Test Case: Rubygems Link verification - Failed!"
end

                               puts "======Submit Button verification======================================"
# Test Case: Submit Button verification
if browser.button(:value => " Submit ").exists?
    puts "Test Case: Submit Button verification  - Passed!"
else
    puts "Test Case: Submit Button verification - Failed!"
end


                               puts "=======Copyright verification============================================="
# Test Case: Copyright verification
if browser.text.include?("2012 alegro.com")
    puts "Test Case: Copyright verification  - Passed!"
else
    puts "Test Case: Copyright verification - Failed!"
	actual_copyright = browser.td(:id => "copyright").text
	puts "Expected: 2012 alegro.com == Actual: #{actual_copyright}"
end

                                puts "=======Last Update============================================="
# Test Case: Last Update
if browser.text.include?("Last updated on August 18, 2012")
    puts "Test Case: Last Update  - Passed!"
else
    puts "Test Case: Last Update - Failed!"
	lastupdate = browser.td(:id => "lastupdate").text
	puts "Expected: Last updated on August 18, 2012 == Actual: #{lastupdate}"
end

                                   puts "======Reset Button verification======================================"
# Test Case: Reset Button verification
if browser.button(:value => "  Reset  ").exists?
    puts "Test Case: Reset Button verification  - Passed!"
else
    puts "Test Case: Reset Button verification - Failed!"
end

qa_f_name 	= "Kot"
qa_l_name 	= "Matroskin"
qa_email 	= "kot_matroskin@gmail.com"
qa_phone 	= "415 555-1212"
qa_state 	= "California"
qa_gendre 	= "male"
qa_terms 	= "Yes"
 
browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name 
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.radio(:value => "Male").set

browser.select_list(:id => "id_state").select "California"

browser.checkbox(:id => "id_checkbox").set

browser.screenshot.save 'entering4reset_button1.png'

browser.button(:value => "  Reset  ").click


browser.screenshot.save 'entering4reset_button2.png'



                                 puts "============Entering Data========================================"

qa_f_name 	= "Kot"
qa_l_name 	= "Matroskin"
qa_email 	= "kot_matroskin@gmail.com"
qa_phone 	= "415 555-1212"
qa_state 	= "California"
qa_gender 	= "male"
qa_terms 	= "Yes"
 
browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name 
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.radio(:value => "Male").set

browser.select_list(:id => "id_state").select "California"

browser.checkbox(:id => "id_checkbox").set



browser.screenshot.save 'entering1.png'



browser.button(:value => " Submit ").click

browser.screenshot.save 'entering2.png'

                                   puts "======Conformation title verification==================================="

# Test Case: Conformation title verification
if browser.title == "Conformation"
    puts "Test Case: Conformation title verification - Passed!"
else
    puts "Test Case: Conformation title verification - Failed!"
end

                                   puts "========Conformation page: Quotes verification=================================="
# Test Case: Quotes existing

quote = browser.td(:id => "id_quotes")
if browser.td(:id => "id_quotes").exists? and quote.text.size > 0
    puts "Test Case: Quotes existing - Failed!"
else
    puts "Test Case: Quotes existing - Passed!"
end

                                    puts "========Conformation page: Facebook link ==================="
# Test Case: Facebook image verification
if browser.image(:src => "./facebook.png").exists?
    puts "Test Case: Facebook image verification  - Failed!"
else
    puts "Test Case: Facebook image verification - Passed!"
end

                                    puts "======= Conformation page: Twitter link ==============================="
# Test Case: Twitter image verification
if browser.image(:src => "./twitter.png").exists?
    puts "Test Case: Twitter image verification  - Failed!"
else
    puts "Test Case: twitter image verification - Passed!"
end

                                    puts "======== Conformation page: Flickr link ==============================="
# Test Case: Flickr image verification
if browser.image(:src => "./flickr.png").exists?
    puts "Test Case: Flickr image verification  - Failed!"
else
    puts "Test Case: flickr image verification - Passed!"
end

                                     puts "======== Conformation page: Youtube link ==============================="
# Test Case: Youtube image verification
if browser.image(:src => "./youtube.png").exists?
    puts "Test Case: Youtube image verification  - Failed!"
else
    puts "Test Case: youtube image verification - Passed!"
end

                                     puts "=======Conformation page: Last Update================================"
# Test Case: Last Update
if browser.text.include?("Last updated")
    puts "Test Case: Last Update  - Failed!"
else
    puts "Test Case: Last Update - Passed!"
end

                                puts "=======Conformation page: Rubygems link verification============================"
# Test Case: Rubygems link verification
if browser.link(:text => "rubygems.org::output-to-file").exists?
    puts "Test Case: Rubygems Link verification  - Failed!"
else
    puts "Test Case: Rubygems Link verification - Passed!"
end

                                  puts "=======Conformation page: Copyright verification========================"
# Test Case: Copyright verification
if browser.text.include?("2012 alegro.com")
    puts "Test Case: Copyright verification  - Passed!"
else
    puts "Test Case: Copyright verification - Failed!"
	actual_copyright = browser.td(:id => "copyright").text
	puts "Expected: 2012 alegro.com == Actual: #{actual_copyright}"
end

puts "======Conformation page: Values verification==================================="
# Test Case: Values verification
if browser.text.include?("Kot")
    puts "Test Case: FName verification - Passed!"
    else
    puts "Test Case: FName verification - Failed!"
end

if browser.text.include?("Matroskin")
    puts "Test Case: LName verification - Passed!"
    else
    puts "Test Case: LName verification - Failed!"
end

if browser.text.include?("kot_matroskin@gmail.com")
    puts "Test Case: Email verification - Passed!"
    else
    puts "Test Case: Email verification - Failed!"
end

if browser.text.include?("415 555-1212")
    puts "Test Case: Phone verification - Passed!"
    else
    puts "Test Case: Phone verification - Failed!"
end

if browser.text.include?("Male")
    puts "Test Case: Gender verification - Passed!"
    else
    puts "Test Case: Gender verification - Failed!"
end

if browser.text.include?("California")
    puts "Test Case: State verification - Passed!"
    else
    puts "Test Case: State verification - Failed!"
end

if browser.text.include?("Agreed")
    puts "Test Case: Agreed verification - Passed!"
    else
    puts "Test Case: Agreed verification - Failed!"
end

puts "======Conformation page: Back Button verification======================================"
# Test Case: Reset Button verification
if browser.button(:value => "  Back  ").exists?
    puts "Test Case: Back Button verification  - Passed!"
    else
    puts "Test Case: Back Button verification - Failed!"
end

browser.button(:value => "  Back  ").click


puts "======Conformation page: Title verification==================================="
# Test Case: Title verification
if browser.title == "Sign Up"
    puts "Test Case: Title verification - Passed!"
    else
    puts "Test Case: Title verification - Failed!"
end

puts "===================================================="
browser.close
