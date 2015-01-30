# Have the function DivisionStringified(num1,num2) take both parameters being passed, 
# divide num1 by num2, and return the result as a string with properly formatted commas.
# If an answer is only 3 digits long, return the number with no commas (ie. 2 / 3 should output "1").
# For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345".

# Use the Parameter Testing feature in the box below to test your code with different arguments.


def DivisionStringified(num1,num2)

    result = (num1.to_i / num2.to_i).to_s.reverse.split("")
  new = []

  result.each_with_index do |num, index|
    if (index) % 3 == 0 && index != 0 
      new << ","
    end
    new << num 
  end
   
  
  # code goes here
  return new.join("").reverse
         
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
DivisionStringified(STDIN.gets)   
