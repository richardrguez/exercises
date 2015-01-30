#9 is a Kaprekar number since 
#9 ^ 2 = 81 and 8 + 1 = 9
#297 is also Kaprekar number since 
#297 ^ 2 = 88209 and 88 + 209 = 297.
#In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
#Find if a given number is a Kaprekar number.


def kaprekar?(k)

  m_len = (((k**2).to_s.length)/2).to_i
  len = k.to_s.length
  number = (k**2).to_s.split("").join("")

  a = number[0, m_len].to_i
  b = number[m_len, len].to_i
  
  return a + b == k ? true : false
end
