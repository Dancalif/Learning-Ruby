#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Searching in Google using Rspec"
    
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

require 'watir-webdriver'
require "rspec"

describe "google.com"         do
    before {
        @browser = Watir::Browser.new :firefox
        @browser.goto "http://google.com"
    }
    after {
        @browser.close
    }
    
    it "Test case # 001: Search for watir"                  do
        @browser.text_field(:name => "q").set "watir"
        @browser.button.click
        @browser.div(:id => "resultStats").wait_until_present
        @browser.title.should == "watir - Google Search"          # a. run
        #@browser.title.should == "blah blah blah"              # b. run
    end
end