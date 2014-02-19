#!/usr/bin/env ruby
#
# Longest Collatz sequence
# http://projecteuler.net/problem=14
#
# The following iterative sequence is defined for the set of positive integers:
#
#   n → n/2 (n is even)
#   n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
#   13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
#

class Numeric
  def collatz
    x = [self]
    x[-1].even? ? (x << x[-1]/2) : (x << 3*x[-1] + 1) until x[-1] == 1
    x
  end
end

p 1.upto(1_000_000).map {|x| [x.collatz.size, x] }.max[1]
# => 837799
