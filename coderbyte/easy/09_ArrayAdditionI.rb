# Have the function ArrayAdditionI(arr) take the array of numbers stored in arr and 
# return the string true if any combination of numbers in the array can be added up to 
# equal the largest number in the array, otherwise return the string false. For example: 
# if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. 
# The array will not be empty, will not contain all the same elements, and may contain negative numbers.

# Use the Parameter Testing feature in the box below to test your code with different arguments. 


def ArrayAdditionI(arr)
  i = 2
  while i < arr.length
    return true if arr.combination(i).map{|comb| comb.inject(:+)}.include?(arr.max)
    i += 1
  end
  false
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
ArrayAdditionI(STDIN.gets)   
