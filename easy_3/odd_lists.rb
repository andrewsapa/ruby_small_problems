### ODD LISTS ###

# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the argument
# Array. 

# Examples:
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
#-------------------------------------------------------------------------------
# Answer:

def even_index_nums(array)
  even_index_array = []
  
  array.each_with_index do |element, index|
    if index.even?
      even_index_array << element
    end
  end
  even_index_array
end

p even_index_nums([2, 3, 4, 5, 6]) == [2, 4, 6] # => true
p even_index_nums([1, 2, 3, 4, 5, 6]) == [1, 3, 5] # => true
p even_index_nums(['abc', 'def']) == ['abc'] # => true
p even_index_nums([123]) == [123] # => true
p even_index_nums([]) == [] # => true


#or this way
def even_index_nums(array)
  counter = 0
  even_index_array = []
  
  loop do
    break if counter == array.length
    
    current_element = array[counter]
    
    if counter % 2 == 0
      even_index_array << current_element
    end
      
    counter += 1
  end 
  even_index_array
end

p even_index_nums([2, 3, 4, 5, 6]) == [2, 4, 6] # => true
p even_index_nums([1, 2, 3, 4, 5, 6]) == [1, 3, 5] # => true
p even_index_nums(['abc', 'def']) == ['abc'] # => true
p even_index_nums([123]) == [123] # => true
p even_index_nums([]) == [] # => true

# Further Exploration: Write a companion method that returns the 2nd, 4th, 6th, 
# and so on elements of an array.
# Try to solve this exercise in at least 2 additional ways.

# 1st way:
def odd_index_nums(array)
  odd_index_array = []
  
  array.each_with_index do |element, index|
    if index.odd?
      odd_index_array << element
    end
  end
  odd_index_array
end

p odd_index_nums([2, 3, 4, 5, 6]) == [3, 5] # => true
p odd_index_nums([1, 2, 3, 4, 5, 6]) == [2, 4, 6] # => true
p odd_index_nums(['abc', 'def']) == ['def'] # => true
p odd_index_nums([123]) == [] # => true
p odd_index_nums([]) == [] # => true

# 2nd way: 

def odd_index_nums(array)
  array.select do |num|
    current_index = array.index(num)
    
    if current_index % 2 == 1
      num
    end
  end
end

p odd_index_nums([2, 3, 4, 5, 6]) == [3, 5] # => true
p odd_index_nums([1, 2, 3, 4, 5, 6]) == [2, 4, 6] # => true
p odd_index_nums(['abc', 'def']) == ['def'] # => true
p odd_index_nums([123]) == [] # => true
p odd_index_nums([]) == [] # => true