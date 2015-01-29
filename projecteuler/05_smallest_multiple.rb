# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by
# all of the numbers from 1 to 20?

def smallest_multiple
  count = 0
  number = 1

  while true
    (1..20).each { |x| count += 1 if number % x == 0 }

    if count == 20
      number
      break
    else
      number += 1
      count = 0
    end
  end

  puts number
end

smallest_multiple
#Answer: 232792560
