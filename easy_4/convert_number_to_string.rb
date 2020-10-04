### Convert a Number to a String! ###

# In the previous two exercises, you developed methods that convert simple numeric 
# strings to signed Integers. In this exercise and the next, you're going to reverse 
# those methods.

# Write a method that takes a positive integer or zero, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in Ruby, such as 
# Integer#to_s, String(), Kernel#format, etc. Your method should do this the 
# old-fashioned way and construct the string by analyzing and manipulating the number.

STRING_ARRAY = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  num_array = []
  float_num = num + 0.0
  
  loop do
    num_array << (((float_num / 10) - ((float_num / 10).truncate)) * 10).round
    float_num = (float_num / 10).truncate + 0.0
    break if float_num == 0
  end
  
  counter = 0
  string_array = []
  
  loop do
    break if num_array.length == counter
      
    current_num = num_array[counter]
    string_array << STRING_ARRAY[current_num]
    
    counter += 1
  end
 string_array.reverse.join('')
end

p integer_to_string(4321) == '4321' # => true
p integer_to_string(0) == '0' # => true
p integer_to_string(5000) == '5000' # => true
p integer_to_string(999999999999999) == '999999999999999' # => true
# seems to works up to 9,999,999,999,999,998


# or shorter
def integer_to_string(num)
  num_array = []
  float_num = num + 0.0
  
  loop do
    num_array << (((float_num / 10) - ((float_num / 10).truncate)) * 10).round
    float_num = (float_num / 10).truncate + 0.0
    break if float_num == 0
  end
 num_array.reverse.join
end

p integer_to_string(4321) == '4321' # => true
p integer_to_string(0) == '0' # => true
p integer_to_string(5000) == '5000' # => true
p integer_to_string(999999999999999) == '999999999999999' # => true
# seems to works up to 9,999,999,999,999,998


# launch school's answer
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
