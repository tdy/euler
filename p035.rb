#!/usr/bin/env ruby
#
# Circular primes
# http://projecteuler.net/problem=35
#
# The number, 197, is called a circular prime because all rotations of the digits:
# 197, 971, and 719, are themselves prime.
#
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71,
# 73, 79, and 97.
#
# How many circular primes are there below one million?
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

  def rotations
    to_s.size.times.map {|x| [to_s[x+1..-1], to_s[0..x]].flatten.reject(&:empty?).map(&:to_i).join.to_i }
  end

  def circular_prime?
    rotations.all? {|x| x.prime? }
  end
end

p (1...1_000_000).select {|candidate| candidate.circular_prime? }.size
# => 55
