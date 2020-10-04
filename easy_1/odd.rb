# Write a method that takes one integer argument, which may be positive, negative, 
# or zero. This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.

#Examples:
=begin
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
=end
#-----------------------------------------------------------------------



def num_odd?(number)
    if number % 2 == 1
        puts "true"
    else
        puts "false"
    end
end

num_odd?(12)
num_odd?(3)
num_odd?(4)
num_odd?(0)
num_odd?(-5)
num_odd?(-12)


#or this way

def num_odd?(number)
    puts number.odd?
end

num_odd?(12)
num_odd?(3)
num_odd?(4)
num_odd?(0)
num_odd?(-5)
num_odd?(-12)


