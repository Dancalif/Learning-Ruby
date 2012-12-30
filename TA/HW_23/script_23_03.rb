BEGIN{
    name = "Denis Umanets"
    description = "Convertion using slice, gsub and scan"
    
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

monthly_payment = "$1,654.55"
yearly_payment1 = monthly_payment.slice(1..-1).gsub(/\,/,'').to_f*12

yearly_payment = yearly_payment1.to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse

puts "Yearly payment is: #{yearly_payment} dollars"