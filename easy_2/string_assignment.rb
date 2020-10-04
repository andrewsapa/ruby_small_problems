# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob
# you are 100% correct, and the answer should come as no surprise. Now, let's 
# look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name
# What does this print out? Can you explain these results?

# -------------------------------------------------------------------------------

# The above code will puts to the screen (returns nil):

# BOB
# BOB

# A variable called name points to string 'Bob'
# A new variable, save_name then points to the original variable name and in turn
# also stores the string 'Bob'.
# Both save_name and name point to string 'Bob'.
# The method .upcase is applied to the variable name in a destructive way indicated by '!' 
# This method capitalizes all letters in the string 'Bob' forming 'BOB'.
# Because .upcase! is destructive, it applies to all variables called name and save_name unless changed.