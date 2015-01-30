# Have the function LetterCount(str) take the str parameter being passed and return the first word
# with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" 
# should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
# If there are no words with repeating letters return -1. Words will be separated by spaces.

# Use the Parameter Testing feature in the box below to test your code with different arguments.


def LetterCount(str)
  mayor = 0 
  arr = []
  
  str.split(" ").each do |word|
    if (CountMax(word) > mayor)
      mayor = CountMax(word)
      arr << word 
    end
   end
       
  # code goes here
  return (CountMax(arr.last) <= 1)? -1 : arr.last
  
         
end

def CountMax(str)
    h = Hash.new 0 
    
    str.split("").each { |letter| h[letter] += 1}
    
    return h.values.max
 end
  

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
LetterCount(STDIN.gets)   
