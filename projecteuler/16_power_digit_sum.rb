# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# # What is the sum of the digits of the number 21000?

def power_digit_sum
  (2**1000).to_s.split("").map(&:to_i).inject(:+)
end

puts power_digit_sum

# Answer: 1366
