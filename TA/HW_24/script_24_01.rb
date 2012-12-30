#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Define the Class which will create a circle and print out Perimetr and Area"
    
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

# Define a class
class Circle
    @@pi = 3.141592
    
    # Constructor method
    def initialize(r)
        @radius = r
        
    end
    
    # Accessor methods
    def printRadius
        @radius
    end
    
    # Set up Perimetr
    def printPerimetr
        @perimetr = 2 * @@pi * @radius
    end
    
    # Set up Area
    def printArea
        @area = @@pi * @radius * @radius
    end
    
end

# Create an object
circle = Circle.new(10)

# Use accessor methods
x = circle.printRadius()
y = circle.printPerimetr()
z = circle.printArea()

# Print output
puts "Radius of the circle is : #{x}"
puts "Perimeter of a circle is: #{y}"
puts "Area of a circle: #{z}"



