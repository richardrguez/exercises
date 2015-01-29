# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

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

def prime_10001st
  count  = 0
  number = 0
  while count < 10001
    count += 1 if is_prime?(number)
    number += 1
  end
  puts number - 1
end

prime_10001st
#Answer: 104743
