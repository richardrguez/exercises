# Have the function Palindrome(str) take the str parameter being passed and return the string true if the 
# parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. 
# For example: "racecar" is also "racecar" backwards. Punctuation and numbers will not be part of the string.

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def Palindrome(str)

  # code goes here
  return str.split(" ").join("").reverse == str.split(" ").join("") ? true : false 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
Palindrome(STDIN.gets)   

