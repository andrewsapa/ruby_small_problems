# Write a method that takes one argument, a positive integer, and returns a string 
# of alternating 1s and 0s, always starting with 1. The length of the string 
# should match the given integer.

# Examples:

#puts stringy(6) == '101010'
#puts stringy(9) == '101010101'
#puts stringy(4) == '1010'
#puts stringy(7) == '1010101'

# The tests above should print true.

#------------------------------------------------------------------------------
# This as close as I could get. The method does return a string of 1's and 0's 
# matching the length of num but does not return true.
=begin
def stringy(num)
a = []

    while a.count < num do
        a.push("1","0")
        a.count
    end
    
    if num.odd?
        a.pop
    end
    a.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


# I missed the .join on the last line again. This revised code works out to true.
def stringy(num)
a = []

    while a.count < num do
        a.push("1","0")
        a.count
    end

    if num.odd?
        a.pop
    end
    a.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end



#Further Exploration
#Modify stringy so it takes an additional optional argument that defaults to 1. 
#If the method is called with this argument set to 0, the method should return 
#a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(num = 1)
a = []
    
    while a.count < num do
        a.push("1","0")
        a.count
    end

    if num.odd?
        a.pop
    elsif num == 0
        return "010101010101" # I'm not sure how many 0's and 1's are being asked for here
    end
    a.join
end

puts stringy == "1"
puts stringy(0) == "010101010101"
puts stringy(6) == "101010"
puts stringy(9) == "101010101"
puts stringy(4)
puts stringy(7)