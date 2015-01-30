#Compute the sum of cubes for a given range a through b.
#Write a method called sum_of_cubes to accomplish this task
#Example Given range 1 to 3 the method should return 36

def sum_of_cubes(a, b)
  total = 0
  (a..b).each{ |x| total += x**3 } 
  
  return total 
end
