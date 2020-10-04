# Use irb to run the following code:

a = [5, 9, 3, 11]
puts a.min

# Find the documentation for the #min method and change the above code to print 
# the two smallest values in the Array.

# source >> https://ruby-doc.org/core-2.7.1/Array.html#method-i-min
puts a.min(2)
# prints 5 and 5
# a.min(2) # returns => [3,5]