#!/usr/bin/env ruby
#
# Digit fifth powers
# http://projecteuler.net/problem=30
#
# Surprisingly there are only three numbers that can be written as the sum of
# fourth powers of their digits:
#
#    1634 = 1**4 + 6**4 + 3**4 + 4**4
#    8208 = 8**4 + 2**4 + 0**4 + 8**4
#    9474 = 9**4 + 4**4 + 7**4 + 4**4
#
# As 1 = 1**4 is not a sum it is not included.
#
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
#

class Integer
  def sum_of_digits_of_power(pow)
    to_s.chars.map(&:to_i).inject(0) {|sum, x| sum + x**pow }
  end
end

class Array
  def sum
    inject(:+)
  end
end

p (2...1_000_000).select {|x| x == x.sum_of_digits_of_power(5) }.sum
# => 443839
