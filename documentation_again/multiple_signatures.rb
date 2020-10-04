#What do each of these puts statements output?

# https://ruby-doc.org/core-2.7.1/doc/syntax/literals_rdoc.html
a = %w(a b c d e) # returns array of strings => ["a","b","c","d","e"]
# the % acts as a string literal with w indicating outputing an array

# https://ruby-doc.org/core-2.7.1/Array.html#method-i-fetch
puts a.fetch(7) # returns error because index 7 lies outside range of the a array


# https://ruby-doc.org/core-2.7.1/Array.html#method-i-fetch
puts a.fetch(7, 'beats me') 
# prints 'beats me' because as the ruby states this
#error can be prevented by supplying a second argument, which will act as a default value.


#https://ruby-doc.org/core-2.7.1/Array.html#method-i-fetch
puts a.fetch(7) { |index| index**2 } 
# prints 49 because per the ruby docs if a block is given it will only be executed 
#when an invalid index is referenced and 7 is an invalid index in this case
