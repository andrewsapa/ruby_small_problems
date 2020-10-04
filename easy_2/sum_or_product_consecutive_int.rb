# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between 1 
# and the entered integer.

# Examples:
=begin
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end
#------------------------------------------------------------------------------

##### 1st answer without user input validation#####
print "Please enter a whole number greater than zero: "
number = gets.chomp.to_i

print "Please type 's' to add or 'p' to multiply: "
choice = gets.chomp.downcase


if choice == 's'
    puts (1..number).inject(:+)
elsif choice == 'p'
    puts (1..number).reduce(:*)
end

##### 2nd answer with user input validation### 
### checks for 0, negative numbers, and non-whole numbers (accepts 1, 1.0, 2, 2.0, etc...)

number = nil
choice = nil

loop do
    print "Please enter a whole number greater than zero: "
    number = gets.chomp
    
    if number.to_i < 1
        print "No 0 or negative numbers! "
    end

    break if number.to_i >= 1 && (number.to_f % 2 == 1 || number.to_f % 2 == 0) 
    print "Only whole numbers! "
end

loop do
    print "Please type 's' to add or 'p' to multiply: "
    choice = gets.chomp.downcase
    break if choice == 's' || choice == 'p'
    print "Invalid input! "
end

if choice == 's'
    puts (1..number.to_i).inject(:+)
elsif choice == 'p'
    puts (1..number.to_i).reduce(:*)
end