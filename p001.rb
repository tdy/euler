#!/usr/bin/env ruby
#
# Multiples of 3 or 5
# http://projecteuler.net/problem=1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#

class Range
  def multiples_of(ary)
    select {|x| ary.any? {|a| x % a == 0 }}
  end
end

class Array
  def sum
    inject(:+)
  end
end

p (1...1000).multiples_of([3, 5]).sum
# => 233168
