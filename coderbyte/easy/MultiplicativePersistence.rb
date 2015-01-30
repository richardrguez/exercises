# Have the function MultiplicativePersistence(num) take the num parameter being passed
# which will always be a positive integer and return its multiplicative persistence which 
# is the number of times you must multiply the digits in num until you reach a single digit. 
# For example: if num is 39 then your program should return 3 because 3 * 9 = 27 then 2 * 7 = 14 
# and finally 1 * 4 = 4 and you stop at 4.

# Use the Parameter Testing feature in the box below to test your code with different arguments.


def MultiplicativePersistence(num)

  new = num.to_s.split('').map {|x| x.to_i}
  
  pers = new.size == 1 ? 0 : 1
  sum = new.reduce(:*)
  new = sum.to_s.split('').map { |x| x.to_i }
 
  until sum < 10  
       p sum = new.reduce(:*)
       p pers += 1
       new = sum.to_s.split('').map { |x| x.to_i }
  end
     
  # code goes here
  return pers 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
MultiplicativePersistence(STDIN.gets)   
