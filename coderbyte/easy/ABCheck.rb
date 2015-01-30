#Using the Ruby language, have the function ABCheck(str) take the str parameter being passed 
#and return the string true if the characters a and b are separated by exactly 3 places anywhere 
#in the string at least once (ie. "lane borrowed" would result in true because there is exactly 
#three characters between a and b). Otherwise return the string false.

#Use the Parameter Testing feature in the box below to test your code with different arguments.        

def ABCheck(str)

  new_str = str.split("")
  index = 0 
  value = false
  
  while index < new_str.length
    if new_str[index] == 'a' and new_str[index+4] == 'b'
      value = true
    end
    index += 1
   end
  
  
  # code goes here
  return value 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
ABCheck(STDIN.gets) 

