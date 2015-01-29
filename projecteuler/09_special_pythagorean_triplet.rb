# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def is_pytha?(a,b,c)
  if a < b
    if b < c
      puts a*b*c if Math.sqrt(a**2 + b**2) == Math.sqrt(c**2)
    end
  end
end

def is_1000?(a,b,c)
  is_pytha?(a,b,c) if (a+b+c)==1000
end

def special_pythagorean_triplet
  (1..1000).each do |a|
    (1..1000).each do |b|
      c = Math.sqrt(a**2 + b**2)
      is_1000?(a,b,c)
    end
  end
end

special_pythagorean_triplet
#Answer: 31875000
