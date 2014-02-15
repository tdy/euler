#!/usr/bin/env ruby
#
# Counting summations
# http://projecteuler.net/problem=76
#
# It is possible to write five as a sum in exactly six different ways:
#
#   4 + 1
#   3 + 2
#   3 + 1 + 1
#   2 + 2 + 1
#   2 + 1 + 1 + 1
#   1 + 1 + 1 + 1 + 1
#
# How many different ways can one hundred be written as a sum of at least two positive integers?
#

class Integer
  def summations
    result = [1] + [0]*self
    1.upto(self-1) {|x| x.upto(self) {|y| result[y] += result[y-x] }}
    result.last
  end
end

p 100.summations
# => 190569291
