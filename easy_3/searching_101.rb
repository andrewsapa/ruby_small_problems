## Searching_101 ##

# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers

user_input = nil
counter = 0
strings = ['1st', '2nd', '3rd', '4th', '5th', 'last']
full_array = []

loop do 
  break if counter == strings.length
  current_num = strings[counter]
  puts "==> Enter the #{current_num} number:"
  user_input = gets.chomp.to_i
  
  full_array << user_input
  counter += 1
end

five_num_array = full_array[0..-2]

if five_num_array.include?(full_array.last)
  puts "The number #{full_array.last} appears in #{five_num_array}."
else
  puts "The number #{full_array.last} does NOT appear in #{five_num_array}."
end
