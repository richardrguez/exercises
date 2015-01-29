# Have the function SecondGreatLow(arr) take the array of numbers stored in arr and return the second 
# lowest and second greatest numbers, respectively, separated by a space. For example: if arr 
# contains [7, 7, 12, 98, 106] the output should be 12 98. The array will not be empty and will 
# contain at least 2 numbers. It can get tricky if there's just two numbers!

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def SecondGreatLow(arr)
   
  new_arr = (arr & arr).sort
  
  if new_arr.length > 2 
    return "#{new_arr[1]} #{new_arr[-2]}"
  else 
    return "#{new_arr[0]} #{new_arr[1]}"
  end
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
SecondGreatLow(STDIN.gets)  

