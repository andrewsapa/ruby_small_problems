#Assume you have the following code:

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

#What will each of the 4 puts statements print?

puts Date.new # prints: -4712-01-01
puts Date.new(2016) # prints: 2016-01-01
puts Date.new(2016, 5) # prints: 2016-05-01
puts Date.new(2016, 5, 13) # prints: 2016-05-13

#per Ruby doc, Creates a date object denoting the given calendar date.
#the date prints out in year, month, and day format