# Display result of the division operation (3 results: integer, float, rounded to 2 decimal) using variables a and b.

a = 10
b = 3

# Result is Fixnum
result= a/b
puts result

# Convert result to float
result = a/b.to_f
puts result

# Round float to 2 decimals
result = a/b.to_f
puts result.round(2)