# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
def even?(num)
  num / 2
end

def odd?(num)
  3 * num + 1
end

def collatz(num)
  new = []

  until num == 1
    new << num
    num = num.even? ? even?(num) : odd?(num)
  end

  new << num
  new.size

end

def longest_collatz_sequence
  puts (1_000_000).downto(1).max_by {|x| collatz(x)}
end

longest_collatz_sequence
#Answer: 837799
