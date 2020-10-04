# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on 
# separate lines.

#-------------------------------------------------------------------------

num = 0

loop do
    num += 2
    puts num
    break if num == 98
end

# or###########
num = 1

while num < 99 do
    num += 1
    next if num % 2 == 1
    puts num
end


## or ##########
99.times do |num|
    puts num if num.even?
end