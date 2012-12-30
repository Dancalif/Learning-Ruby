def calc_sum_any(first, *rest)
rest.each {|r| first = first + r}
puts "Summary of all values is: ", first
end

# Method call #1.

calc_sum_any(22, 55, 634, 647, 226, 416)

def calc_sum_any(first, *rest)
rest.each {|r| first = first + r}
puts "Summary of all values is: ", first
end

# Method call #2.

calc_sum_any(543, 56, 3, 245, 456, 3345, 1, 776, 4865, 2998, 1712)

def calc_sum_any(first, *rest)
rest.each {|r| first = first + r}
puts "Summary of all values is: ", first
end

# Method call #3.

calc_sum_any(1, 5, 4)

