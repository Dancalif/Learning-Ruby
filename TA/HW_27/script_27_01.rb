#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Using gem mechanize go to www.htmlcodes.me and capture the title of the main page and the size"
    
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

require 'mechanize'

sun = Mechanize.new

Dan = sun.get('http://www.htmlcodes.me')
title = Dan.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{Dan.body.size} bytes"