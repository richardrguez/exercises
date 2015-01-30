# Have the function MeanMode(arr) take the array of numbers stored in arr and return 1 if the
# mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 
# 1 because the mode (3) equals the mean (3)). The array will not be empty, will only contain 
# positive integers, and will not contain more than one mode.

# Use the Parameter Testing feature in the box below to test your code with different arguments.


def MeanMode(arr)

  mode = 0 
  n_arr = arr & arr
  count = 0  
  max = 0 
  
  n_arr.each do |n|
    arr.each do |a|
        if n == a
           count += 1 
        end
    end
      if count > max
        max = count 
        mode = n
      end
      count = 0 
  end
  
  if arr.length % 2 == 0 
    mean = ( arr[(arr.length/2) - 1] + arr[(arr.length/2)])/ 2
  else 
    mean = arr[arr.length/2]
  end
  
  # code goes here
  return mean == mode ? 1 : 0 
         
end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
MeanMode(STDIN.gets)

