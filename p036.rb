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

class Integer
  def palindrome_in_base?(base=10)
    to_s(base) == to_s(base).reverse
  end
end

class Array
  def sum
    inject(:+)
  end
end

p (1...1e6).select {|x| x.palindrome_in_base? and x.palindrome_in_base?(2) }.sum
# => 872187
