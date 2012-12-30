# Display the ranges (True or False)

if(1..10) === 11
puts "11 is in the range"
else
puts "11 is NOT in the range"
end
if("a".."z") === "k"
puts "K is in the range"
else
puts "K is NOT in the range"
end
if("cab".."caw") === "cat"
puts "CAT is in the range"
else
puts "CAT is NOT in the range"
end

# Same task as above but using light version of DRY concept.

number = 11
letter = "k"
word = "cat"

numbers = (1..10)
letters = ("a".."z")
words = ("cab".."caw")

if numbers === number
puts "True"
else
puts "False"
end
if letters === letter
puts "True"
else
puts "False"
end
if words === word
puts "True"
else
puts "False"
end

