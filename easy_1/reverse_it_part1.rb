# Write a method that takes one argument, a string, and returns a new string with 
# the words in reverse order.

#Examples:

#puts reverse_sentence('') == ''
#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'

#-------------------------------------------------------

def reverse_sentence(string)
    array_string = string.split
    array_string.reverse #discovered after looking at the solution, adding .join(" ") here yields a true conditional
end

puts reverse_sentence("Hello Adrian") == "Adrian Hello"
puts reverse_sentence("how are you") == "you are how"


#or 

def reverse_sentence(string)
   string.split.reverse_each do |word| 
       print word, " "
   end
end

puts reverse_sentence('Hello Adrian') == 'Adrian Hello'
puts reverse_sentence('how are you') == 'you are how'


# unfortunately i had difficulty creating a method where the conditional equals true
# when calling th method (i.e. puts reverse_sentence("Hello Adrian") == "Adrian Hello" 
# is supposed to print true but prints false in my code

