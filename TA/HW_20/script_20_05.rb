month=["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

# Check the class of the array.

puts "Class of array 'month' is: #{month.class}"

# Check the size of each array.

puts "Size of array 'month' is: #{month.size}"

# Check the first item of each array.

puts "First item of array 'month' is: #{month.first}"

# Check the last item of each array.

puts "Last item of array 'month' is: #{month.last}"

# Sort the array in ascending order:

puts "Sorting the array in ascending order is: #{month.sort}"

# Display the array in descending order.

puts "Sorting the array in descending order is: #{month.sort{|a,b|b<=>a}}"

# Display the array in reverse order.

puts "The array 'week' is in reverse order: #{month.reverse}"

# Display the array in shuffle order.

puts "The array 'week' is in shuffle order: #{month.shuffle}"

# Convert the array in string.

puts "Converting the array in string: #{month.to_s}"

# Removing all elements from array.

puts "My array is empty: #{month = []}"

puts month.empty?

# Remove all items from array.

puts "Is array empty? #{month.clear}"

puts month.empty?
