# Write a method that takes one argument, a positive integer, and returns a list
# of the digits in the number.

#Examples:
=begin
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
=end
#--------------------------------------------------------




##### Notes to myself #######
# input 1 argument (a postive integer)
# output a list (array) of the digits in that number

=begin
write a method
def digit_list(input of 1 argument of a positive integer)
    need transfer num into an array of num's individual digits
    need to break down num some how
end

call method
puts digit_list(4567)
=end


def digit_list(num)
    array = []
    
    num.to_s.each_char do |c| 
        array.push(c.to_i)
    end
   array
end

puts digit_list(4567) == [4, 5, 6, 7] # => true
