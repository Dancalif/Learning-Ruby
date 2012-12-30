#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Using gem mechanize go to www.google.com, search for term 'Quality Assurance' and display all result links"
    
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

dan = sun.get('http://google.com/') do |dan|
	search_result = dan.form_with(:name => 'f') do |search|
	search.q = 'Quality Assurance'
end.submit
search_result.links.each do |link|
	puts link.text
	end
end
