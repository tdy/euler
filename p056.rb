#!/usr/bin/env ruby
#
# Problem 56
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
  def digitsum
    to_s.chars.inject(0) {|sum, x| sum + x.to_i }
  end
end

a = b = (1...100).to_a
p a.product(b).collect {|a, b| (a**b).digitsum }.max
# => 972
