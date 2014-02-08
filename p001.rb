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

def sum_of_multiples(m1, m2, max)
  (1...max).select {|x| x % m1 == 0 or x % m2 == 0 }.inject(:+)
end

p sum_of_multiples(3, 5, 1000)
# => 233168
