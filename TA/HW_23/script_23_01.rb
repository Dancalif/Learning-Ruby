# Convertion

BEGIN{
    name = "Denis Umanets"
    description = "Convertion without slice, using delete, reverse, chop"
    
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
yearly_payment = monthly_payment.delete(',').reverse.chop.reverse.to_f * 12


puts "Yearly payment is: #{yearly_payment} dollars"