#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Using gem mechanize go to www.htmlcodes.me, lick on each of the following links and display theirs title and size"
    
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

my_code = Dan.link_with(:text => 'Background Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Background Color').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Background Image').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'CSS Cursor').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'CSS Image Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'CSS Links').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Color Code Generator').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Email Links').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Fixed Background').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Font Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Color Chart').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Color Codes').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Color Picker').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Color Tester').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Image Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Links').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'HTML Textbox Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Hide Scrollbar').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Horizontal Scrollbar').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Image Border').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'JavaScript Links').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Letter Spacing').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Line Height').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Link Image').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Marquee Speed').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Overlapping Text').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Repeat Image').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Scroll Box Border').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Scroll Box Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Scroll Box Color').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Scroll Picture Box').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Scrolling Images').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Scrolling Text').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Stop Marquee').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Stretch Background').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Text Code').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Text Color').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Textbox Border').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Textbox Color').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Textbox Image').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Vertical Scrollbar').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"

my_code = Dan.link_with(:text => 'Word Spacing').click
title = my_code.search('title').inner_text
puts "Title of the Dan: #{title}"
puts "Size of the Dan: #{my_code.body.size} bytes"
