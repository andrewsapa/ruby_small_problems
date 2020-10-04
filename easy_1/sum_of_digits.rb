# Write a method that takes one argument, a positive integer, and returns the 
# sum of its digits.

#Examples:

#puts sum(23) == 5
#puts sum(496) == 19
#puts sum(123_456_789) == 45
#The tests above should print true.

# For a challenge, try writing this without any basic looping constructs 
# (while, until, loop, and each).

#------------------------------------------------------------------------------

def sum(num)
a_num = []
num_split_string = num.to_s.split('')
    
    while a_num.count < num do
        a_num.push(num_split_string)
        a_num.count
    break
    end
    a_num.flatten!.map! do |e|
        e.to_i
    end
    a_num.sum
end


puts sum(23)
puts sum(496) 
puts sum(123_456_789)


# Further Exploration below ## this answer acquired from other solutions

def sum(num)
  num.digits.sum
end 


puts sum(23)
puts sum(496) 
puts sum(123_456_789)




