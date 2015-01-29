# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


def is_palin?(n)
  num = n.to_s
  size = n.to_s.length
  count = 0
  (size/2).times { |x| count += 1 if num[x] == num[-1-x] }
  return size / 2 == count ? true : false
end

  def largest_palindrome_product
  one = 0
  two = 0
  palin = [1]
  (100..999).each do |x|
    (100..999).each do |y|
      if (is_palin?(x * y)) && ((x * y) > palin.max)
        palin << x * y
        one = x
        two = y
      end
    end
  end

  puts one, two, one * two

end

largest_palindrome_product
#Answer: 906609
