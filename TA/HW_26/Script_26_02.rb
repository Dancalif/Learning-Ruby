#ruby Script_26_02.rb
#========================

BEGIN{
    name = "Denis Umanets"
    description = "Nokogiri & xpath = the tiles of sites an their lenghts"
    
    puts "#################################### "
    puts "Author \s\s\s\s\s : " + name
    puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0 .. 18]
    puts ""ß
    puts "Ruby version : " + RUBY_VERSION
    puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop
    puts "Description \s: " + description
    puts "#################################### "
    puts ""
}
ß
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.shopping.com/"))

#=== using xpath

doc.xpath('//title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end

doc = Nokogiri::HTML(open("http://www.google.com/"))

#=== using xpath

doc.xpath('//title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end
doc = Nokogiri::HTML(open("http://www.yahoo.com/"))

#=== using xpath

doc.xpath('//title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end
doc = Nokogiri::HTML(open("http://www.ebay.com/"))

#=== using xpath
doc.xpath('//title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end
doc = Nokogiri::HTML(open("http://www.apple.com/"))

#=== using xpath

doc.xpath('//title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end

#=== using css

doc = Nokogiri::HTML(open("http://www.shopping.com/"))
doc.css('title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end

#=== using css

doc = Nokogiri::HTML(open("http://www.google.com/"))
doc.css('title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end

#=== using css

doc = Nokogiri::HTML(open("http://www.yahoo.com/"))
doc.css('title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end

#=== using css

doc = Nokogiri::HTML(open("http://www.ebay.com/"))
doc.css('title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end
#=== using css

doc = Nokogiri::HTML(open("http://www.apple.com/"))
doc.css('title').each do |line|
	puts ""
	puts "Title:" + line.text
	puts "Length is:" + line.text.length.to_s
end	

