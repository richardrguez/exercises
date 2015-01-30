#Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers
#that can be formed with those digits.
#Example: 
#Given: 123 
#Return: [123, 132, 213, 231, 312, 321]

def number_shuffle(number)
  number.to_s.split("").permutation(number.to_s.length).to_a.map{|x| x.join("").to_i}
end
