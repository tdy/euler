#!/usr/bin/env ruby
#
# Powerful digit sum
# http://projecteuler.net/problem=56
#
# A googol (10**100) is a massive number: one followed by one-hundred zeros;
# 100**100 is almost unimaginably large: one followed by two-hundred zeros.
# Despite their size, the sum of the digits in each number is only 1.
#
# Considering natural numbers of the form, a**b, where a, b < 100, what is
# the maximum digital sum?
#

class Integer
  def powerful_digit_sum
    to_s.chars.map(&:to_i).inject(0) {|sum, x| sum + x }
  end
end

a = b = (1...100).to_a
p a.product(b).map {|a, b| (a**b).powerful_digit_sum }.max
# => 972
