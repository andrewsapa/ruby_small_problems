### Multiples of 3 and 5 ###

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and
# some other number, and then computes the sum of those multiples. For instance, 
# if the supplied number is 20, the result should be 98 (3+5+6+9+10+12+15+18+20).

# You may assume that the number passed in is an integer greater than 1. 

# Examples:

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
# ------------------------------------------------------------------------------
def multisum(num)
  counter = 0
  array = (1..num).to_a
  new_array = []
  loop do
    counter +=1
   
    current_multiple3 = counter * 3
    current_multiple5 = counter * 5
    
    if current_multiple3 <= num
      new_array << current_multiple3
    end
    
    if current_multiple5 <= num
      new_array << current_multiple5
    end
    
    break if array.length == counter 
  end
  new_array.uniq.sum #could add .sort for clarity
end

p multisum(1) == 0 # => true
p multisum(3) == 3 # => true
p multisum(5) == 8 # => true
p multisum(10) == 33 # => true
p multisum(1000) == 234168 # => true


# or this slightly shorter way
def multisum(num)
  new_array = []
   
  (1..num).select do |e|
    current_multiple3 = e * 3
    current_multiple5 = e * 5
    
    if current_multiple3 <= num
      new_array << current_multiple3
    end
    
    if current_multiple5 <= num
      new_array << current_multiple5
    end
  end
  new_array.uniq.sum #could add .sort for clarity
end

p multisum(1) == 0 # => true
p multisum(3) == 3 # => true
p multisum(5) == 8 # => true
p multisum(10) == 33 # => true
p multisum(1000) == 234168 # => true

# Further Exploration----------------------------------------------------------

# Investigate Enumerable.inject (also known as Enumerable.reduce), How might this 
# method be useful in solving this problem? (Note that Enumerable methods are 
# available when working with Arrays.) Try writing such a solution. Which is 
# clearer? Which is more succinct?

def multisum(num)
  (1..num).select { |n| n % 3 == 0 || n % 5 == 0 }.inject(:+)
end

