#Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#Use the ruby documentation to determine what this code will print.

https://docs.ruby-lang.org/en/2.0.0/syntax/methods_rdoc.html
https://docs.ruby-lang.org/en/2.0.0/syntax/calling_methods_rdoc.html  ###(the primary source talking about semantics and order of calling methods)

# The reserved word def tells the reader that this is a method, follolwed by the name of the method 'my_method,'
# with a parameter that accepts 4 arguments. In the method body there is an array in which p writes obj.inspect
# to they array or as the ruby docs say returns a string containing a human-readable representation of that object. 
# The keywod 'end' tells us the completion of the method. Following, the method 'my_method' is called with three numerical
# arguments present. The code prints and returns => [4, 5, 3, 6]. An array is printed because of what 
# the body of the method tells us. Method calling semantics dicate that Ruby fills in the missing arguments from left to right.
# First 4 is assigned to a, then 6 is assigned to d. This leaves only the arguments with default values. 
# Since 5 has not been assigned to a value yet, it is given to b and c uses its default value of 3.


