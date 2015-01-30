# Using the Ruby language, have the function StringScramble(str1,str2) take both parameters being 
# passed and return the string true if a portion ofstr1 characters can be rearranged to match str2, 
# otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output 
# should return true. Punctuation and symbols will not be entered with the parameters. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def StringScramble(str1,str2)

  a_str1 = str1.split("")
  a_str2 = str2.split("")
  count = 0 
  
  a_str2.each do |letter|
    if a_str1.include?(letter)
      count += 1
    end
  end
  
  return count == a_str2.length ? true : false
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
StringScramble(STDIN.gets)  
