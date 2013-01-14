#!/usr/bin/env ruby
#
# Largest palindrome product
# http://projecteuler.net/problem=4
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#

class Fixnum
  def palindrome?
    to_s.reverse == to_s
  end
end

results, tridigits = [], 100..999
tridigits.each {|x| tridigits.each {|y| results << x*y if (x*y).palindrome? }}
p results.max
# => 906609
