#!/usr/bin/ruby

BEGIN{
    name = "Denis Umanets"
    description = "Define the Class which will create a right triangle and print out Perimetr and Area"
    
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
class Triangle
    #@@pi = 3.141592
    
    # Constructor method
    def initialize(a)
        @cathet1 = @cathet2 = @hypotenuse = a
    end
    
    # Accessor methods
    def printCathet1
        @Cathet1
    end
    
    def printCathet2
        @cathet
    end
    
    def printHypotenuse
        @hypotenuse
    end
        
        # Set up Perimetr
        def printPerimetr
            @perimetr = 3 * @cathet1
        end
    
        # Set up Area
        def printArea
            @area = (Math.sqrt(3) / 4) * (@cathet1 * @cathet1)
        end
    
        
end

# Create an object
triangle = Triangle.new(10)

# Use accessor methods
x = triangle.printPerimetr()
y = triangle.printArea()
z = triangle.printHypotenuse()
    
# Print output
puts "Cathet of a right triangle: #{z}"
puts "Perimeter of a right triangle: #{x}"
puts "Area of a right triangle: #{y}"
