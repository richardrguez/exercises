# Have the function PrimeTime(num) take the num parameter being passed and return the string true 
# if the parameter is a prime number, otherwise return the string false. The range will be between 1 and 2^16.

# Use the Parameter Testing feature in the box below to test your code with different arguments.


def PrimeTime(num)
  
  value = "true" 
   
  (2...num).each do |x|
    if num % x == 0 
      value = "false"
    end 
  end
  
  value = "true" if num == 2
      
  return value  
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
PrimeTime(STDIN.gets)  

       
