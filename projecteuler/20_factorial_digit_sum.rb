# 20_factorial_digit_sum.rb
# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

def factorial_digit_sum(number)
  (1..number).reduce(:*).to_s.split("").map(&:to_i).inject(:+)
end

puts factorial_digit_sum(100)
#Answer: 648
