#Given an array containing some strings, return an array containing the length of those strings.
#You are supposed to write a method named 'length_finder' to accomplish this task.
#Example:
#Given ['Ruby','Rails','C42'] the method should return [4,5,3]

def length_finder(input_array)
  total = []
  input_array.each { |word| total << word.length }
  return total
end
