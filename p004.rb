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

class Integer
  def palindrome?
    to_s.reverse == to_s
  end
end

class Range
  def palindrome_product
    to_a.product(to_a).map {|x, y| x*y if (x*y).palindrome? }.compact
  end
end

p (100..999).palindrome_product.max
# => 906609
