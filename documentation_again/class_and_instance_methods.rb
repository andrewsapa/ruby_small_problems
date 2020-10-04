#Locate the ruby documentation for methods File::path and File#path. How are they different?

File::path 
https://ruby-doc.org/core-2.7.1/File.html#method-c-path

File#path
https://ruby-doc.org/core-2.7.0/File.html#method-i-path

# File::path and File#path are different according to the Ruby documentation in 
# that File::path is a class method (::) that returns a string representation of 
# the path where as File#path is an instance method (#) that returns the path name 
# used to create a file as a string.