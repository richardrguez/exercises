#Using the Ruby language, have the function RunLength(str) take the str parameter being 
#passed and return a compressed version of the string using the Run-length encoding algorithm. 
#This algorithm works by taking the occurrence of each repeating character and outputting that 
#number along with a single character of the repeating sequence. For example: "wwwggopp" 
#would return 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols. 

#Use the Parameter Testing feature in the box below to test your code with different arguments. 

def RunLength(str)

  new_string = []
  # code goes here
  str.split("").each do |val|
    new_string << str.split(“”).select {|s| val == s}.length << val
  end
   
  return new_string.join("") 
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
RunLength(STDIN.gets) 
