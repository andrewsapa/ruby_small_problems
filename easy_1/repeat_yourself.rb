# Write a method that takes two arguments, a string and a positive integer, and 
# prints the string as many times as the integer indicates.

#Example:

# repeat('Hello', 3)

#----------------------------------------------

def repeater(string, num)
    counter = 0
    
    until counter == num
        counter += 1
        puts string
    end
end

repeater("Adrian", 5)

