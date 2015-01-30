# Have the function OffLineMinimum(strArr) take the strArr parameter being passed which will be an 
# array of integers ranging from 1...n and the letter "E" and return the correct subset based on the
# following rules. The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] where 
# the I's stand for integers and the E means take out the smallest integer currently in the whole set. 
# When finished, your program should return that new set with integers separated by commas. For example: 
# if strArr is ["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5.

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def OffLineMinimum(strArr)

  arr_num = []
  result = []
  
  strArr.each do |x|
    if x =~ /\d/ #funciona para un string
      arr_num << x 
    else 
      result << arr_num.min
      arr_num.delete(arr_num.min)
    end
  end
   
  return result.join(",")
           
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
OffLineMinimum(STDIN.gets)  

