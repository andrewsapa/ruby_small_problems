### PALINDROMIC NUMBERS ###

# Write a method that returns true if its integer argument is palindromic, false
# otherwise. A palindromic number reads the same forwards and backwards. 

# Examples:
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true
#----------------------------------------------------------------------------

# Answer:

def palindromic_number?(input)
  input.to_s.reverse.to_i == input
end

p palindromic_number?(34543) == true # => true
p palindromic_number?(123210) == false # => true
p palindromic_number?(22) == true # => true
p palindromic_number?(5) == true # => true
p palindromic_number?('a') == false # => true
p palindromic_number?('a3a') == false # => true
p palindromic_number?('') == false # => true
p palindromic_number?(00100) 