# Write a method that counts the number of occurrences of each element in a 
# given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, 
# print each element alongside the number of occurrences.

#---------------------------------------------------------------------


def count_occurrences(vehicles)
    puts "car => #{vehicles.count("car")}"
    puts "SUV => #{vehicles.count("SUV")}"
    puts "truck => #{vehicles.count("truck")}"
    puts "motorcycle => #{vehicles.count("motorcycle")}"
end

count_occurrences(vehicles)


# better answer after looking at solution
def count_occurrences(vehicles)
  occurrences = {}
  
  vehicles.each do |val| 
   occurrences[val] = vehicles.count(val)
   end
   occurrences.each do |k, v| 
     puts "#{k} => #{v}"
   end
end

count_occurrences(vehicles)