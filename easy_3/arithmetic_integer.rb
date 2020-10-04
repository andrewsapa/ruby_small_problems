### ARITHMETIC INTEGER ###

# Write a program that prompts the user for two positive integers, and then prints
# the results of the following operations on those two numbers: addition, subtraction,
# product, quotient, remainder, and power. Do not worry about validating the input.

operators = %w(+ - * / % **)

puts "==> Enter the first number:"
first_num = gets.chomp.to_f
    
puts "==> Enter the second number:"
second_num = gets.chomp.to_f

puts "==> I will now do some math for you..."
  
operations = [first_num + second_num, first_num - second_num, 
              first_num * second_num, first_num / second_num, 
              first_num % second_num, first_num ** second_num]

counter = 0              
loop do
  break if counter == operators.length
  
  current_operator = operators[counter]
  current_operation = operations[counter]
  
  puts "==> #{first_num} #{current_operator} #{second_num} = #{current_operation}"

  counter += 1
end

# or this way--------------------------------------------------------------
puts "==> Enter the first number:"
first_num = gets.chomp.to_f

puts "==> Enter the second number:"
second_num = gets.chomp.to_f

puts "==> I will now do some math for you..."

puts "==> #{first_num} + #{second_num} = #{first_num + second_num}"
puts "==> #{first_num} - #{second_num} = #{first_num - second_num}"
puts "==> #{first_num} * #{second_num} = #{first_num * second_num}"
puts "==> #{first_num} / #{second_num} = #{first_num / second_num}"
puts "==> #{first_num} % #{second_num} = #{first_num % second_num}"
puts "==> #{first_num} ** #{second_num} = #{first_num ** second_num}"
