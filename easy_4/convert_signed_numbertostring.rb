### Convert a Signed Number to a String! ###

# In the previous exercise, you developed a method that converts non-negative 
# numbers to strings. In this exercise, you're going to extend that method by 
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as 
# Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string 
# from the previous exercise.


def signed_integer_to_string(num)
  num_array = []
  float_num = num + 0.0
  
  loop do
    num_array << (((float_num / 10) - ((float_num / 10).truncate)) * 10).round
    float_num = (float_num / 10).truncate + 0.0
    break if float_num == 0
  end
  
  string_num = num_array.reverse.join
  
  plus_minus_checker(string_num)
end

def plus_minus_checker(string)
  if string.start_with?('-')
    string_array = string.split('')
    array = []
    
    string_array.select do |e|
      if e != '-'
        array << e
      end
    end
    array.prepend('-').join
  elsif string == '0'
    '0'
  else
    string_array = string.split('')
    string_array.prepend('+').join
  end
end

p signed_integer_to_string(4321) == '+4321' # => true
p signed_integer_to_string(-123) == '-123' # => true
p signed_integer_to_string(0) == '0' # => true
p signed_integer_to_string(-9999999999999998) == '-9999999999999998' # => true
# seems to work from -9,999,999,999,999,998 up to 9,999,999,999,999,998



# launch school's answer
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end