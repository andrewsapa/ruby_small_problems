### PALINDROMIC STRINGS PART 2 ###

# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be case-
# sensitive, and it ignore all non-alphanumeric characters. If you wish, you may
# simplify things by calling the palindrome? method your wrote in the previous 
# exercise.

def real_palindrome?(string)
  reverse_string = string.reverse.downcase
  reverse_array = []
  counter = 0
  loop do
    break if counter == reverse_string.length
    
    current_element = reverse_string[counter]
    
    if (/[[:alnum:]]/.match(current_element)) != nil
      reverse_array << current_element
    end

    counter += 1
  end
  reverse_array.join('') == reverse_array.reverse.join('')
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false