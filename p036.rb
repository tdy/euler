#!/usr/bin/env ruby
#
# Double-base palindromes
# http://projecteuler.net/problem=36
#
# The decimal number, 585 = 1001001001_2 (binary), is palindromic in both bases.
#
# Find the sum of all numbers, less than one million, which are palindromic in
# base 10 and base 2.
#
# (Please note that the palindromic number, in either base, may not include
# leading zeros.)
#

class String
  def palindrome?
    self == reverse
  end
end

sum = 0
1.upto(1e6).map {|x| sum += x if x.to_s.palindrome? and x.to_s(2).palindrome? }
p sum
# => 872187
