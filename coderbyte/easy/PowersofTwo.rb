# Have the function PowersofTwo(num) take the num parameter being passed which will be an integer 
# and return the string true if it's a power of two. If it's not return the string false. 
# For example if the input is 16 then your program should return the string true but if
# the input is 22 then the output should be the string false.

# Use the Parameter Testing feature in the box below to test your code with different arguments.


def PowersofTwo(num)
  value = false
  
  (1..num).each do |x|
      if x**2 == num
        value = true
        end 
    end
  
  # code goes here
  return value
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
PowersofTwo(STDIN.gets)  

