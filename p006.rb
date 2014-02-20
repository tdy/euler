#!/usr/bin/env ruby
#
# Sum square difference
# http://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is,
#   1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)**2 = 55**2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.
#

class Numeric
  def sum_square
    downto(1).inject(0) {|sum, x| sum + x*x }
  end

  def square_sum
    downto(1).inject(:+) ** 2
  end
end

p 100.square_sum - 100.sum_square
# => 25164150
