# Using the Ruby language, have the function CountingMinutesI(str) take the str parameter being passed 
# which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen 
# and return the total number of minutes between the two times. The time will be in a 12 hour clock format. 
# For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320.

# Use the Parameter Testing feature in the box below to test your code with different arguments.      

def CountingMinutesI(str)

  result = 0

  arr = str.split(/-/)
  
  first_hour_m = arr[0].scan(/(am|pm)/).flatten
  second_hour_m = arr[1].scan(/(am|pm)/).flatten
  
  first_hour = arr[0].scan(/\d+/)
  first_hour_hour = (first_hour_m[0] == "pm" && first_hour[0].to_i != 12 ) ? first_hour[0].to_i + 12 : first_hour[0].to_i
  first_hour_min = first_hour[1].to_i
  
  second_hour = arr[1].scan(/\d+/)
  second_hour_hour = (second_hour_m[0] == "pm" && second_hour[0].to_i != 12 ) ? second_hour[0].to_i + 12 : second_hour[0].to_i
  second_hour_min = second_hour[1].to_i
  
  
  if (first_hour_m[0] == "am" && first_hour[0].to_i == 12 )
    first_hour_hour = first_hour[0].to_i - 12
  end


  if (second_hour_m[0] == "am" && second_hour[0].to_i == 12 )
    second_hour_hour = second_hour[0].to_i - 12
  end


  if (first_hour_hour == second_hour_hour) && (second_hour_min < first_hour_min) && (first_hour_m == second_hour_m)
    result = ((23 * 60) + ( (second_hour_min - first_hour_min) % 60) )
  else
    result = (((second_hour_hour - first_hour_hour) % 24 ) * 60) - (second_hour_min - first_hour_min) % 60 
  end
    
  return result
  
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
CountingMinutesI(STDIN.gets)  
