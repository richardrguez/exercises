# Using the Ruby language, have the function Division(num1,num2) take both parameters being passed 
# and return the Greatest Common Factor. That is, return the greatest number that evenly goes into 
# both numbers with no remainder. For example: 12 and 16 both are divisible by 1, 2, and 4 so the 
# output should be 4. The range for both parameters will be from 1 to 10^3. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def Division(num1,num2)

  arr_1 = []
  arr_2 = []
  
  (1..num1).each do |val_1|
    if num1 % val_1 == 0 
      arr_1 << val_1
    end
   end
  
  (1..num2).each do |val_2|
    if num2 % val_2 == 0 
      arr_2 << val_2
    end
   end
    
  
  
  # code goes here
  return (arr_2 & arr_1).last 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
Division(STDIN.gets)  

