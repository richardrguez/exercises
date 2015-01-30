# Using the Ruby language, have the function ExOh(str) take the str parameter being passed and 
# return the string true if there is an equal number of x's and o's, otherwise return the string
# false. Only these two letters will be entered in the string, no punctuation or numbers. 
# For example: if str is "xooxxxxooxo" then the output should return false because there are 6 x's and 5 o's.

# Use the Parameter Testing feature in the box below to test your code with different arguments.      

def ExOh(str)
  countZ = 0 
  countO = 0 
  # code goes here
  if str.each_char do |letter|
    if letter == "x"
      countZ += 1
    elsif letter == "o"
      countO += 1
    end
  end
     
	#return countZ == countO ? true : false 
  if countZ == countO 
    return true 
  else
    return false 
  end
   
end
end
# keep this function call here 
