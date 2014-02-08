#!/usr/bin/env ruby
#
# Permuted multiples
# http://projecteuler.net/problem=52
#
# It can be seen that the number, 125874, and its double, 251748, contain
# exactly the same digits, but in a different order.
#
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x
# contain the same digits.
#

class Integer
  def permuted_multiple_of?(num)
    to_s.chars.sort == num.to_s.chars.sort
  end
end

result = 1
loop do
  break if (2..6).collect {|x| result.permuted_multiple_of?(result*x) }.all? {|x| x == true }
  result += 1
end
p result
# => 142857
