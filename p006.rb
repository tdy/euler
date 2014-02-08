#!/usr/bin/env ruby
#
# Sum square difference
# http://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is,
#   1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.
#

class Array
  def sum
    inject(:+)
  end
end

def sum_square_upto(max)
  (1..max).map {|x| x ** 2 }.sum
end

def square_sum_upto(max)
  (1..max).to_a.sum ** 2
end

p (sum_square_upto(100) - square_sum_upto(100)).abs
# => 25164150
