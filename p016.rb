#!/usr/bin/ruby env
#
# Power digit sum
# http://projecteuler.net/problem=16
#
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?
#

p (2**1000).to_s.chars.inject(0) {|sum, x| sum + x.to_i }
# => 1366
