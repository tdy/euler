#!/usr/bin/env ruby
#
# Summation of primes
# http://projecteuler.net/problem=10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#

class Integer
  def primes
    candidates = [nil, nil, *(2..self)]
    (2..self**0.5).each {|x| (x**2..self).step(x) {|y| candidates[y] = nil } if candidates[x] }
    candidates.compact
  end
end

class Array
  def sum
    inject(:+)
  end
end

p 2_000_000.primes.sum
# => 142913828922
