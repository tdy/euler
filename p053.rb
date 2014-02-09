#!/usr/bin/env ruby
#
# Combinatoric selections
# http://projecteuler.net/problem=53
#
# There are exactly ten ways of selecting three from five, 12345:
#
#   123, 124, 125, 134, 135, 145, 234, 235, 245, and 345
#
# In combinatorics, we use the notation, 5C3 = 10.
#
# In general,
#
#   nCr = n! / (r!(n-r)!), where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
#
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.
#
# How many, not necessarily distinct, values of  nCr, for 1 ≤ n ≤ 100, are
# greater than one-million?
#

class Integer
  def bang
    raise "n.bang is undefined for n < 0" if self < 0
    downto(1).inject(:*) || 1
  end

  def choose(r)
    raise "n.choose(r) is undefined for r > n" if r > self
    bang / r.bang / (self-r).bang
  end
end

class Enumerator
  def combinatoric_selections
    map {|n| 1.upto(n).map {|r| n.choose(r) }}.flatten
  end
end

p 1.upto(100).combinatoric_selections.select {|x| x > 1e6 }.size
# => 4075
