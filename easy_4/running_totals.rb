### Running Totals ###

# Write a method that takes an Array of numbers, and returns an Array with the 
# same number of elements, and each element has the running total from the original
# Array.

def running_total(array)
  counter = 0
  next_array = []
  final_array = []
  
  loop do
    break if counter == array.length
    
    current_num = array[counter]
    next_array << current_num
    
    current_running_total = next_array.inject(:+)
    final_array << current_running_total
    
    counter += 1
  end
  final_array
end

p running_total([2, 5, 13]) == [2, 7, 20] # => true
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # => true
p running_total([3]) == [3] # => true
p running_total([]) == [] # => true

# or this way
def running_total(array)
  final_array = []
  
  array.each_with_object([]) do |num, object|
    object << num
    final_array << object.reduce(:+)
  end
  final_array
end

p running_total([2, 5, 13]) == [2, 7, 20] # => true
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # => true
p running_total([3]) == [3] # => true
p running_total([]) == [] # => true

# or this way
def running_total(array)
  next_array = []
  final_array = []
  
  array.select do |num| 
    next_array << num
    final_array << nex_array.sum
  end
  final_array
end

p running_total([2, 5, 13]) == [2, 7, 20] # => true
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # => true
p running_total([3]) == [3] # => true
p running_total([]) == [] # => true

# even shorter
def running_total(array)
  final_array = []
  array.each_with_object([]) { |num, object| final_array << (object << num).inject(:+) }
  final_array
end