# Check the class of the array.

puts "Class of array 'days' is: #{days=(01..31).to_a.class}"

# Check the size of each array.

puts "Size of array 'days' is: #{days=(01..31).to_a.size}"

# Check the first item of each array.

puts "First item of array 'days' is: #{days=(01..31).to_a.first}"

# Check the last item of each array.

puts "Last item of array 'days' is: #{days=(01..31).to_a.last}"

# Display the array in reverse order.

puts "The array 'days' is in reverse order: #{days=(01..31).to_a.reverse}"

# Display the array in shuffle order.

puts "The array 'days' is in shuffle order: #{days.shuffle}"

# Verify if array contains #15.

puts "If array 'days' contains #15: #{days.include? 15}"

# Verify if array contains #32.

puts "If array 'days' contains #32: #{days.include? 32}"

# Convert array to string.

puts "Now array is a string: #{days=(01..31).to_s}"

puts "What class the array belongs: #{days.class}"

# Remove all items from array.

puts "Is array empty? #{days=(01..31).to_a.clear}"

puts days.empty?