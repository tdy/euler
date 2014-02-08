#!/usr/bin/env ruby
#
# Factorial digit sum
# http://projecteuler.net/problem=20
#
# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!
#

class Integer
  def factorial_digit_sum
    downto(1).inject(:*).to_s.chars.map(&:to_i).inject(:+)
  end
end

p 100.factorial_digit_sum
# => 648
