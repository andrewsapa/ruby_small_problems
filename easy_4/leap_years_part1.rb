### Leap Years (part 1) ###

# In the modern era under the Gregorian Calendar, leap years occur in every year
# that is evenly divisible by 4, unless the year is also divisible by 100. If the
# year is evenly divisible by 100, then it is not a leap year unless the year is
# evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that
# takes any year greater than 0 as input, and returns true if the year is a leap
# year, or false if it is not a leap year. 


def leap_year?(year)
  result1 = year.to_f / 4 
  result2 = year.to_f / 100
  result3 = year.to_f / 400
  
  if result1.to_s.end_with?('0') && !result2.to_s.end_with?('0')
    true
  elsif result3.to_s.end_with?('0')
    true
  else
    false
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
p leap_year?(1700) == false # => true
p leap_year?(1) == false # => true
p leap_year?(100) == false # => true
p leap_year?(400) == true # => true
p leap_year?(1600) == true # => true
p leap_year?(1700) == false # => true
p leap_year?(1800) == false # => true
p leap_year?(2100) == false # => true
p leap_year?(2200) == false # => true
p leap_year?(2300) == false # => true
p leap_year?(2500) == false # => true
p leap_year?(2600) == false # => true

# Further Exploration-------------------------------------------------------
# The order in which your perform tests for a leap year claculation is important.
# For what years will leap_year? fail if you rewrite it as:

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

# The above equation will fail for years evenly divided by 100, 4, and 400.