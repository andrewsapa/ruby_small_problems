# What does this code print?

# https://ruby-doc.org/core-2.7.1/Numeric.html#method-i-step
5.step(to: 10, by: 3) { |value| puts value }
# The method .step invokes the given block with the sequence of numbers starting at 5, 
# incremented by 3, and up to the limit of 10.