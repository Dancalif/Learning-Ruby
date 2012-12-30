#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Using gem mechanize go to www.htmlcodes.me and display the list of ALL links"
    
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

puts ""
puts "= LIST OF ALL LINKS ="
Dan.links.each do |link|
puts link.text
end
