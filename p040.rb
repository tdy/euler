#!/usr/bin/env ruby
#
# Champernowne's constant
# http://projecteuler.net/problem=40
#
# An irrational decimal fraction is created by concatenating the positive integers:
#
#   0.123456789101112131415161718192021...
#                ^
# It can be seen that the 12th digit of the fractional part is 1.
#
# If dn represents the nth digit of the fractional part, find the value of the
# following expression.
#
#   d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
#

d = (0..2e5).inject("") {|str, x| str + x.to_s }
p [1, 1e1, 1e2, 1e3, 1e4, 1e5, 1e6].inject(1) {|product, x| product * d[x].to_i }
# => 210
