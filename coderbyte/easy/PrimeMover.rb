# Have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4. 
# For example: if num is 16 the output should be 53 as 53 is the 16th prime number.

# Use the Parameter Testing feature in the box below to test your code with different arguments.
# Test case points: 2


def PrimeMover(num)
  arr_prime = []
  
    (2..1000000).each do |x|
      if PrimeTime(x) 
        unless arr_prime.include?(x)
          arr_prime << x 
          break if arr_prime.size == num
        end
       end
    end
 
  
  return arr_prime.last
      
end

def PrimeTime(num)
  
  value = true 
   
  (2...num).each do |x|
    if num % x == 0 
      value = false
    end 
  end
  
  value = true if num == 2
  value = false if num <= 1       
  return value  
         
end

   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
PrimeMover(STDIN.gets)
