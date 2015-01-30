#Complete the squareSum method so that it squares each number passed into it and then sums the results together.
#For example:
#squareSum([1,2, 2]) # should return 9

#code
def squareSum(numbers)
  numbers.map{|x| x**2}.inject(:+)  
end


