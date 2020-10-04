### What Century is That? ###
# Write a method that takes a year as input and returns the century. The return 
# value should be a string that begins with the century number, and ends with st,
# nd, rd, or th as appropriate for that number. 

# New centuries begin in years that end with 01. So, The years 1901-2000 comprise
# the 20th century. 

# Examples:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
# ------------------------------------------------------------------------------
def calc_century(year)
  if year.to_s.end_with?('0')
    year / 100
  else
    (year + 100) / 100
  end
end

def century(year)
  century = calc_century(year)
  
  if year.to_s.end_with?('0') && year.to_s.length >= 4
    "#{century}th"
  elsif century.to_s.end_with?('1') && !century.to_s.end_with?('11')
    "#{century}st"
  elsif century.to_s.end_with?('2') && !century.to_s.end_with?('12')
    "#{century}nd"
  elsif century.to_s.end_with?('3') && !century.to_s.end_with?('13')
    "#{century}rd"
  else
   "#{century}th"
  end
end


p century(2000) == '20th' # => true
p century(2001) == '21st' # => true
p century(1965) == '20th' # => true
p century(256) == '3rd' # => true
p century(5) == '1st' # => true
p century(10103) == '102nd' # => true
p century(1052) == '11th' # => true
p century(1127) == '12th' # => true
p century(11201) == '113th' # => true
