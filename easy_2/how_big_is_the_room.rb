# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

#-------------------------------------------------------------------------------
=begin
ONE_SQ_METER = 10.7639 # square feet (best to used constant here according to Launch School)

puts "I will calculate the area of your room."
puts "Please enter the length of your room in meters."
length = gets.chomp.to_f

puts "Please enter the width of your room in meters."
width = gets.chomp.to_f

area_sq_meter = length * width

puts "The area of the room is #{area_sq_meter} square meters (#{area_sq_meter * 
        ONE_SQ_METER} square feet)."
=end

# Further Exploration
# Modify this program to ask for the input measurements in feet, and display the 
# results in square feet, square inches, and square centimeters.

ONE_SQ_FT_TO_SQ_IN = 144.00
ONE_SQ_FT_TO_SQ_CM = 929.03

puts "I will calculate the area of your room."

puts "Please enter the length of your room in feet."
length_ft = gets.chomp.to_f

puts "Please enter the width of your room in feet."
width_ft = gets.chomp.to_f

area_sq_feet = (length_ft * width_ft).round(2)

puts "The area of the room is #{area_sq_feet} square feet (#{area_sq_feet * 
        ONE_SQ_FT_TO_SQ_IN} square inches, #{area_sq_feet * ONE_SQ_FT_TO_SQ_CM} square centimeters)."

