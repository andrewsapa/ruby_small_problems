### MULTIPLYING TWO NUMBERS ###

# Create a method that takes two arguments, multiplies them together, and returns
# the result.

def multiply(num_one, num_two)
    num_one * num_two
end

multiply(5, 3) == 15 # => true
multiply(100, 50) == 5000 # => true
multiply(0, 5) == 0 # => true

# Further Exploration-----------------------------------------------------------
# For fun: what happens if the first argument is an Array? What do you think is happening here?

def multiply(array, num_two)
  array * num_two
end

num_array = [1, 2, 3, 4, 5]

p multiply(num_array, 3)# => [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5]

# It looks like the array [1, 2, 3, 4, 5] object itself is being multiplied 3 times
# like this [1, 3, 4, 4, 5] * 3 to create one long array of the same 5 repeating
# elements. The array object_id is the same throughout the method but the contents 
# of the array has changed.
