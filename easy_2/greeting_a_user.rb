# Write a program that will ask for user's name. The program will then greet the 
# user. If the user writes "name!" then the computer yells back to the user.

#Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

#-------------------------------------------------------------------------------

print "What is your name? "

name = gets.chomp

if name.include? "!"
    puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else 
    puts "Hello #{name}."
end


# Further Exploration#######################

# Try modifying our solution to use String#chomp! and String#chop!, respectively.

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
    name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

