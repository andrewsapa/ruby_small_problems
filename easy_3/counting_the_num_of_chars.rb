### COUNTING THE NUMBER OF CHARACTERS ###

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

puts "Please write a word or multiple words:"
input = gets.chomp

def char_counter(string)
  revised_input = string.split.join
  puts "There are #{revised_input.length} characters in '#{string}'."
end

char_counter(input)
