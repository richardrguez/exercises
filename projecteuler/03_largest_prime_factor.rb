# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime(n)
  if n <= 1
    return false
  elsif n == 2
    return true
  else
    (2..(n-1)).each do |num|
      return n % num == 0 ? false : true
    end
  end
end

def multiply(numbers)
  numbers.inject(:*)
end


def largest_prime_factor
  primes_numbers = []
  (1..600851475143).each do |value|

    if prime(value)
      if 600851475143 % value == 0
        primes_numbers << value

        if multiply(primes_numbers) == 600851475143
          puts primes_numbers.last
          break
        end

      end
    end
  end

end

largest_prime_factor

#Answer: 6857
