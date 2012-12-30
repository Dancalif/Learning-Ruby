# Create 4 empty hashes.

BEGIN{
    name = "Denis Umanets"
    description = "Creating 2 empty hashes"
    
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

year = Hash.new
contacts = Hash.new

# Check the class of each Hash.

puts "Class of Hash 'year' is: #{year.class}"
puts "Class of Hash 'contacts' is: #{contacts.class}"

# Check the size of each Hash.

puts "Size of Hash 'year' is: #{year.size}"
puts "Size of Hash 'contacts' is: #{contacts.size}"

# Check all keys of each Hash.

puts "All keys of Hash 'year' is: #{year.keys}"
puts "All keys of Hash 'contacts' is: #{contacts.keys}"

# Check all values of each Hash.

puts "All values of hash 'year' is: #{year.values}"
puts "All values of hash 'contacts' is: #{contacts.values}"

# Check if each hash is empty.

puts "Is hash 'year' empty?: #{year.empty?}"
puts "Is hash 'contacts' empty?: #{contacts.empty?}"

