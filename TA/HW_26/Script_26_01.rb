#ruby Script_26_01.rb
#========================
BEGIN{
    name = "Denis Umanets"
    description = "Parcing XML file by xpath and css to retrive the info"
    
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

require 'open-uri'
require 'nokogiri'

# Using gem nokogiri from xml (http://www.alegro.com/sdc.xml), using xpath or css
# selector, retrieve the following information:

doc = Nokogiri::HTML(open("http://www.alegro.com/sdc.xml"))
#=== using xpath
# doc.xpath('//server/orig-kw').each do |line|
#   Original Keyword (orig-kw)
doc.css('server orig-kw').each do |line|
	puts ""
	puts "Original Keyword: " + line.text
end
#===retrieving server>engine
doc.css('server engine').each do |line|
	puts ""
	puts "server name: " + line.text
end
#===retrieving server>country_id
doc.css('server country_id').each do |line|
	puts ""
	if line.text == "1" then
		puts "Country : US"
	elsif line.text == "44" then
		puts "Country : UK"
	elsif line.text == "250" then
		puts "Country : FR"
	elsif line.text == "276" then
		puts "Country : DE"
	elsif line.text == "36" then
		puts "Country : AU"
	else
 
		puts "Country : N/A"
	
	end
end

doc.css('deals deal[xref="5"] name').each do |line|
	puts ""
	puts "Name:\n " + line.text
end

#=== using xpath
# doc.xpath('//deals/deal[@xref="5"]/description').each do |line|

doc.css('deals deal[xref="5"] description').each do |line|
	puts ""
	puts "Description:\n " + line.text
	puts "Length is : #{line.text.length}"
end

#===================================================================

#  Search engine version

doc.css('kadu-version').each do |line|
	puts ""
	puts "kadu-version: " + line.text
end

# Index (kadu-index-info)

doc.css('kadu-index-info').each do |line|
	puts ""
	puts "kadu-index-info: " + line.text
end

doc.css('deals deal[xref="15"] name').each do |line|
	puts ""
	puts "Name:\n " + line.text
end

# Description of the deal # 15

doc.css('deals deal[xref="15"] description').each do |line|
	puts ""
	puts "Description:\n " + line.text
	puts "Length is : #{line.text.length}"
end

#  Price of the deal # 15  

doc.css('deals deal[xref="15"] price').each do |line|
	puts ""
	puts "Price:\n " + line.text
end

# Url of the deal # 15 

doc.css('deals deal[xref="15"] url').each do |line|
	puts ""
	puts "Url:\n " + line.text
end

# Product-id of the deal # 15

doc.css('deals deal[xref="15"] product-id').each do |line|
	puts ""
	puts "Product-id:\n " + line.text
end