#!/usr/bin/env ruby
#
# Digit factorials
# http://projecteuler.net/problem=34
#
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
#
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.
#
# NOTE: as 1! = 1 and 2! = 2 are not sums they are not included.
#

class Integer
  def bang
    raise "n.bang is undefined for n < 0" if self < 0
    downto(1).inject(1, :*) || 1
  end

  def digit_bang
    to_s.chars.map(&:to_i).map(&:bang)
  end
end

class Array
  def sum
    inject(0, :+)
  end
end

p (10...1_000_000).select {|x| x == x.digit_bang.sum }.sum
# => 40730
