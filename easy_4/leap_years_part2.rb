### Leap Years (Part 2) ###

# A continuation of the previous exercise.
# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years
# occur in any year that is evenly divisible by 4. 

# Using this information, update the method from the previous exercise to determine
# leap years both before and after 1752. 

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0 && year >= 1752
    false
  else 
    year % 4 == 0
  end
end

p leap_year?(2016) == true # => true
p leap_year?(2015) == false # => true
p leap_year?(2100) == false # => true
p leap_year?(2400) == true # => true
p leap_year?(240000) == true # => true
p leap_year?(240001) == false # => true
p leap_year?(2000) == true # => true
p leap_year?(1900) == false # => true
p leap_year?(1752) == true # => true
p leap_year?(1700) == true # => true
p leap_year?(1) == false # => true
p leap_year?(100) == true # => true
p leap_year?(400) == true # => true
