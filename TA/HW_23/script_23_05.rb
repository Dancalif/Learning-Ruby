

BEGIN{
    name = "Denis Umanets"
    description = "Convertion using gsub, reverse, join"
    
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

# Calculation. Result should be: Your total payment, including the tax is: $99.46

cast = "payment: $91.21, tax: 8.25%"
payment = cast.delete('payment: $').slice(0..5).chop.to_f
puts payment.class
puts payment
tax = cast.slice(22..25).to_f
puts tax.class
puts tax
total = payment + tax
puts "Your total payment, including the tax is: $#{total}"
