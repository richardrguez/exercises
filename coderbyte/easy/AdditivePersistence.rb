# Using the Ruby language, have the function AdditivePersistence(num) take the num parameter being
# passed which will always be a positive integer and return its additive persistence which is
# the number of times you must add the digits in num until you reach a single digit. For example: 
# if num is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9.

# Use the Parameter Testing feature in the box below to test your code with different arguments.       

def AdditivePersistence(num)

  new = num.to_s.split('').map {|x| x.to_i}
  
  pers = new.size == 1 ? 0 : 1
  sum = new.reduce(:+)
  new = sum.to_s.split('').map { |x| x.to_i }
 
  until sum < 10  
       p sum = new.reduce(:+)
       p pers += 1
       new = sum.to_s.split('').map { |x| x.to_i }
  end
     
  # code goes here
  return pers 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
AdditivePersistence(STDIN.gets) 
