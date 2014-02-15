#!/usr/bin/env ruby
#
# Truncatable primes
# http://projecteuler.net/problem=37
#
# The number 3797 has an interesting property. Being prime itself, it is possible
# to continuously remove digits from left to right, and remain prime at each stage:
# 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.
#
# Find the sum of the only eleven primes that are both truncatable from left to
# right and right to left.
#
# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
#

class Integer
  def prime?
    return true if self == 2
    return false if self <= 1 or self % 2 == 0
    (3..Float::INFINITY).step(2) do |x|
      return true if x**2 > self
      return false if self % x == 0
    end
  end

  def truncates
    to_s.size.times.map {|x| [to_s[0..x], to_s[x+1..-1]] }.flatten.reject(&:empty?).map(&:to_i).uniq
  end
end

class Array
  def sum
    inject(0, :+)
  end
end

p 11.upto(1_000_000).select {|candidate| candidate.truncates.all? {|x| x.prime? }}.sum
# => 748317
