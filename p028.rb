#!/usr/bin/env ruby
#
# Number spiral diagonals
# http://projecteuler.net/problem=28
#
# Starting with the number 1 and moving to the right in a clockwise direction a
# 5 by 5 spiral is formed as follows:
#
#   21< 22  23  24  25<
#   20   7<  8   9< 10
#   19   6   1<  2  11
#   18   5<  4   3< 12
#   17< 16  15  14  13<
#
# It can be verified that the sum of the numbers on the diagonals is 101.
#
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral
# formed in the same way?
#

dims = 1001

# top-right diag is 3^2 + 5^2 + 7^2 + ... + 1001^2
tr = (3..dims).step(2).inject(0) {|sum, x| sum + x**2 }

# bottom-left diag is (2^2)+1 + (4^2)+1 + (6^2)+1 ... + (1000^2)+1
bl = (2..dims-1).step(2).inject(0) {|sum, x| sum + (x**2)+1 }

# top-left diag is (3^2)-(3-1) + (5^2)-(5-1) + (7^2)-(7-1) + ... (1001^2)-(1001-1)
tl = (3..dims).step(2).inject(0) {|sum, x| sum + (x**2)-(x-1) }

# bottom-right diag is (2^2)-(2-1) + (4^2)-(4-1) + ... (1000^2)-(1000-1)
br = (2..dims).step(2).inject(0) {|sum, x| sum + (x**2)-(x-1) }

p tr + bl + tl + br + 1
# => 669171001
