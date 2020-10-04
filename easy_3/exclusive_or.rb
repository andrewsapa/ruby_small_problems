### Exclusive Or ###

# In this exercise, you will write a function named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise. 
# Note that we are looking for a boolean result instead of a truthy/falsy value as 
# returned by || and &&.

def xor?(param_1, param_2)
  !param_1 != !param_2
end

p xor?(5.even?, 4.even?) == true # => true
p xor?(5.odd?, 4.odd?) == true # => true
p xor?(5.odd?, 4.even?) == false # => true
p xor?(5.even?, 4.odd?) == false # => true
p xor?(false, nil) == false # => true
p xor?(5, 6) == false # => true