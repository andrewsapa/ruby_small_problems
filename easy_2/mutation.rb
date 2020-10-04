# What will the following code print, and why? Don't run the code until you have
# tried to answer.

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2

# --------------------------------------------------------------------------

# In line 1 array1 points to a newly created array of strings using the literal %w
# In line 2 array2 points to an empty array
# In line 3 the .each method is applied to iterate over the strings in array1. The block accepts 1 paramater |value|.
# The destructive mutating technique <<, is then used to push each of the string elements from array1 into array2. 
# The previously empty array2, is now full of all of the string elements that were in array1.
# In line 4 array1 is iterated over again with the .each method, accepting 1 parameter |value| in the block
# The method .upcase! is destructively applied conditionally to the
# elements in array1 on the condition that the string starts with 'C' or 'S'. 
# This destructive process is also applied to array2 because both arrays contain the same string objects
# even though the arrays have different object_ids.
# Line 5 puts array2 prints it's elements on to the screen with a newline: 

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
