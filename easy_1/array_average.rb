# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be empty 
# and the numbers will always be positive integers.

#Examples:

#puts average([1, 5, 87, 45, 8, 8]) == 25
#puts average([9, 47, 23, 95, 16, 52]) == 40

#------------------------------------------------------------------------------

def average(array_int)
    array_int[0..array_int.length].sum / array_int.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25 # =>true
puts average([9, 47, 23, 95, 16, 52]) == 40 # =>true


# Further Exploration

# Currently, the return value of average is an Integer. When dividing numbers, 
# sometimes the quotient isn't a whole number, therefore, it might make more sense 
# to return a Float. Can you change the return value of average from an Integer to 
# a Float?

def average(array_int)
    array_int.sum.to_f / array_int.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25.666666666666668 # => true
puts average([9, 47, 23, 95, 16, 52]) == 40.333333333333336 # => true





