#!/usr/bin/env ruby
#
# 10001st prime
# http://projecteuler.net/problem=7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that
# the 6th prime is 13.
#
# What is the 10,001st prime number?
#

class Numeric
  def prime?
    return true if self == 2
    return false if self <= 1 or self % 2 == 0
    (3..Float::INFINITY).step(2) do |x|
      return true if x**2 > self
      return false if self % x == 0
    end
  end
end

def prime_index_of(n)
  (7..Float::INFINITY).step(2).inject(3) do |sum, x|
    return x.to_i-2 if sum == n
    sum + (x.to_i.prime? ? 1 : 0)
  end
end

p prime_index_of(10001)
# => 104743
