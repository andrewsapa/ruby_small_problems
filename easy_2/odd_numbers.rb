# Odd Numbers
# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed 
# on separate lines.
#----------------------------------------------------------------------------

num = 0

while num >= 0 && num < 99 do
    num += 1
    next if num % 2 == 0
    puts num
end

# or#########

num = 0

while num < 100 do
    num += 1
    next if num % 2 == 0 
    puts num
end

# or#############

num = 0

until num == 99
    num += 1
    next if num % 2 == 0
    puts num
end

#or ###############

num = 0

loop do
    num += 1
    next if num % 2 == 0
    puts num
    break if num == 99 
end


#### Further Exploration ####################

1.upto(99) { |num| puts num if num.odd? }