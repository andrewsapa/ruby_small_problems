### Convert a String to a Signed Number! ###

# In the previous exercise, you developed a method that converts simple numeric 
# strings to Integers. In this exercise, you're going to extend that method to work 
# with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number 
# as an integer. The String may have a leading + or - sign; if the first character 
# is a +, your method should return a positive number; if it is a -, your method 
# should return a negative number. If no sign is given, you should return a positive 
# number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as 
# String#to_i, Integer(), etc. You may, however, use the string_to_integer method 
# from the previous lesson.

def plus_or_minus_check(input)
  if input.first == 43
    input.delete(input.first)
    input.inject(0) do |memo, num|
      (memo * 10) + num - 48
    end
  elsif input.first == 45
    input.delete(input.first)
    array = []
    input.each do |num|
      array << (num - num) - num
    end
    array.inject(0) do |memo, num|
     (memo * 10) + num + 48
    end
  else
    input.inject(0) do |memo, num|
    (memo * 10) + num - 48
    end
  end
end

def string_to_signed_integer(string)
  string_array = string.split('')
  
  array = []

  string_array.each do |char|
    array << char.bytes
  end

  array.flatten!
  
  plus_or_minus_check(array) 
end

p string_to_signed_integer('4321') == 4321 # => true
p string_to_signed_integer('-570') == -570 # => true
p string_to_signed_integer('+100') == 100 # => true
p string_to_signed_integer('-100') == -100 # => true
