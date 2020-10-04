### PALINDROMIC STRINGS (PART 1) ###

# Write a method that returns true if the string passed as an argument is a 
# palindrome, false otherwise. A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# further exploration, without reverse, works for strings or arrays
# couldn't figure out how to do without conditionals
def palindrome_string?(input)
  if input.class == Array
    input = input.join(' ').split('')
  end
  
  counter = input.length
  reverse_input = []

  while counter > 0 do
    counter -= 1

    current_element = input[counter]
    reverse_input << current_element
  end
  
  if input.class == Array
    reverse_input == input
  else
    reverse_input.join == input
  end
end

p palindrome_string?('madam') == true # => true
p palindrome_string?('Madam') == false # => true      
p palindrome_string?("madam i'm adam") == false # => true
p palindrome_string?('356653') == true # => true
puts "--------------------------------------"
p palindrome_string?(['madam']) == true # => true
p palindrome_string?(['Madam']) == false # => true        
p palindrome_string?(["madam", "i'm", "adam"]) == false # => true
p palindrome_string?([3,5,6,6,5,3]) == true # => true
