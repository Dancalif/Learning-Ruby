week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

# Check the class of the array.

puts "Class of array 'week' is: #{week.class}"

# Check the size of each array.

puts "Size of array 'week' is: #{week.size}"

# Check the first item of each array.

puts "First item of array 'week' is: #{week.first}"

# Check the last item of each array.

puts "Last item of array 'week' is: #{week.last}"

# Sort the array in ascending order:

puts "Sorting the array in ascending order is: #{week.sort}"

# Display the array in descending order.

puts "Sorting the array in descending order is: #{week.sort{|a,b|b<=>a}}"

# Display the array in reverse order.

puts "The array 'week' is in reverse order: #{week.reverse}"

# Display the array in shuffle order.

puts "The array 'week' is in shuffle order: #{week.shuffle}"

# Convert the array in string.

puts "Converting the array in string: #{week.to_s}"

# Removing all elements from array.

puts "My array is empty: #{week = []}"

puts week.empty?

# Remove all items from array.

puts "Is array empty? #{week.clear}"

puts week.empty?