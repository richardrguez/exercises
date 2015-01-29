# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def is_prime?(n)
  if n <= 1
    return false
  elsif n == 2
    return true
  else
    (2..(n-1)).each do |num|
      if n % num == 0
        return false
      end
    end
  end
  return true
end

def summation_of_primes
  total = 0
  (2_000_000).times do |num|
    if is_prime?(num)
      total += num
    end
  end

  puts total
end

summation_of_primes
#Answer: 142913828922

#Faster soluction
#require 'prime'
#total = 0
#Prime.each(2_000_000) { |x| total += x }
#puts total
