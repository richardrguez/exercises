# Using the Ruby language, have the function BinaryConverter(str) return the decimal form of the binary value. 
# For example: if 101 is passed return 5, or if 1000 is passed return 8.

# Use the Parameter Testing feature in the box below to test your code with different arguments.      

def BinaryConverter(str)
  
  index = 0 
  val_final = 0 
  
  str.to_s.reverse.split("").each do |val|
       if val == "1"
         val_final += 2**index
        end
    index += 1
   end
      
  # code goes here
  return val_final.to_i 
         
end
