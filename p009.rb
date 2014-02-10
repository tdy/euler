#!/usr/bin/env ruby
#
# Special Pythagorean triplet
# http://projecteuler.net/problem=9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#   a**2 + b**2 = c**2
#
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#
# Find the product abc.
#

class Integer
  def special_pythagorean_triplet
    (1..self/3).each {|a| (1..self/2).each {|b| return [a, b, self-a-b] if a**2 + b**2 == (self-a-b)**2 }}
  end
end

class Array
  def product
    inject(:*)
  end
end

p 1000.special_pythagorean_triplet.product
# => 31875000
