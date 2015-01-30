Have the function PalindromeTwo(str) take the str parameter being passed and return the string true if the 
parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. 
The parameter entered may have punctuation and symbols but they should not affect whether the string is in fact
a palindrome. For example: "Anne, I vote more cars race Rome-to-Vienna" should return true.

Use the Parameter Testing feature in the box below to test your code with different arguments..

def PalindromeTwo(str)
  str.downcase!
  
  # code goes here
  return str.scan(/\w+/).join("") == str.scan(/\w+/).join("").reverse ? true : false
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
PalindromeTwo(STDIN.gets)   
