### SQUARING AN ARGUMENT ###

# Using the multiply method from the "Multiplying Two Numbers" problem, write a 
# method that computes the square of its argument (the square is the result of 
# mulitplying a number by itself)

def multiply(num_one, num_two)
  num_one * num_two
end

def square(num)
  multiply(num, num)
end

p square(3) == 9 # => true
p square(12) == 144 # => true
p square(-8) == 64 # => true

# Further Exploration-----------------------------------------------------------
def multiply(num_one, num_two)
  num_one * num_two
end

def square(num)
  multiply(num, num)
end

def cubed(num, power)
  multiply(num, 1) ** power
end
  
p cubed(6, 2) == 36 # =>true
p cubed(0, 0) == 1 # =>true
p cubed(1, 0) == 1 # =>true
p cubed(0, 1) == 0 # =>true
p cubed(3, 1) == 3 # =>true

