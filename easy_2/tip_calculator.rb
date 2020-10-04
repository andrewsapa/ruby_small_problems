# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip 
# and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0 

#-------------------------------------------------------------------------------

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage (no % symbol)?"
tip_percent = gets.chomp.to_f

def tip_calculator(tip_percent, bill)
    percent = tip_percent / 100
    (percent * bill).round(2)
end

puts "The tip is $#{tip_calculator(tip_percent, bill)}"

puts "The total is $#{tip_calculator(tip_percent, bill) + bill}"


# Further Exploration ################################################

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage (no % symbol)?"
tip_percent = gets.chomp.to_f

def tip_calculator(tip_percent, bill)
    percent = tip_percent / 100
    (percent * bill)
end

if tip_calculator(tip_percent, bill) == tip_calculator(tip_percent, bill).floor(1)
    puts "The tip is $#{tip_calculator(tip_percent, bill).floor(1)}0"
else
    puts "The tip is $#{tip_calculator(tip_percent, bill).floor(2)}"
end

if tip_calculator(tip_percent, bill) == tip_calculator(tip_percent, bill).floor(1)
    puts "The tip is $#{tip_calculator(tip_percent, bill).floor(1)}0"
else
    puts "The total is $#{(tip_calculator(tip_percent, bill) + bill).floor(2)}"
end
