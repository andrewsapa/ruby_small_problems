# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with words that contain five or more characters 
# reversed. Each string will consist of only letters and spaces. Spaces should be 
# included only when more than one word is present.

#Examples:

#puts reverse_words('Professional')          # => lanoisseforP
#puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
#puts reverse_words('Launch School')         # => hcnuaL loohcS

#-------------------------------------------------------------------------------

def reverse_words(string)
    loop do
        string.split.each do |word|
            if word.length >= 5
                print word.reverse, ' '
            else
                print word, ' '
            end
        end
        break
    end
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


# or probably better code after looking at solution, this method's conditional equals true when calling it
# not sure if this the intent for reverse_it_part2 like in reverse_it_part1
def reverse_words(string)
    words = string.split
    
     words.map! do |word|
            if word.length >= 5
                word.reverse
            else
                word
            end
        end
    words.join(" ")
end

puts reverse_words('Professional') == 'lanoisseforP' # true
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')