### Convert a String to a Number! ###

# The String#to_i method converts a string of numeric characters (including an 
# optional plus or minus sign) to an Integer. String#to_i and the Integer constructor 
# (Integer()) behave similarly. In this exercise, you will create a method that 
# does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number 
# as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about 
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such 
# as String#to_i, Integer(), etc. Your method should do this the old-fashioned way 
# and calculate the result by analyzing the characters in the string.

def string_to_integer(string)
  string = string.split('')
  array = []
  
  string.each do |char|
    array << char.bytes
  end
  array.flatten!
  
  number = nil
  array.inject(0) do |memo, num|
    number = ( memo*10) + num - 48
  end
  number
end

p string_to_integer('4321') == 4321 # => true
p string_to_integer('570') == 570 # => true

# or this longer way
NUMBER_HASH = { "0" => 0,
                "1" => 1,
                "2" => 2,
                "3" => 3,
                "4" => 4,
                "5" => 5, 
                "6" => 6,
                "7" => 7, 
                "8" => 8,
                "9" => 9
              }

def string_to_integer(string)
  string_array = string.split('').reverse
  counter = 0
  array = []

  loop do
    break if counter == string_array.length 
    
    current_char = string_array[counter]
    array << NUMBER_HASH[current_char]
    
    counter += 1
  end
  
  final_output = 0
  counter2 = 0
  
  loop do
    break if counter2 == array.length
    
    current_num = array[counter2]
    current_index = array.index(current_num)
    final_output += (current_num * (10 ** current_index))
    
    counter2 += 1
  end
  final_output
end

p string_to_integer('4321') == 4321 # => true
p string_to_integer('570') == 570 # => true