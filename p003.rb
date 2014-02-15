#!/usr/bin/env ruby
#
# Largest prime factor
# http://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143?
#

class Integer
  def largest_prime_factor
    upper = self
    2.upto(Float::INFINITY) do |lower|
      upper /= lower while upper % lower == 0
      return (upper > lower ? upper : lower) if lower**2 > upper
    end
  end
end

p 600851475143.largest_prime_factor
# => 6857
