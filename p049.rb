#!/usr/bin/env ruby
#
# Prime permutations
# http://projecteuler.net/problem=49
#
# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases
# by 3330, is unusual in two ways: (i) each of the three terms are prime, and,
# (ii) each of the 4-digit numbers are permutations of one another.
#
# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes,
# exhibiting this property, but there is one other 4-digit increasing sequence.
#
# What 12-digit number do you form by concatenating the three terms in this
# sequence?
#

require "prime"

class Numeric
  def primes_upto(max)
    if block_given?
      Prime.take_while {|x| x <= max }.each {|y| yield y if y >= self }
    else
      Prime.take_while {|x| x <= max }.select {|y| y >= self }
    end
  end

  def perm_of?(num)
    to_s.chars.permutation.map(&:join).map(&:to_i).include?(num)
  end
end

p 1000.primes_upto(9999).combination(2).map {|x, y|
  [x, y, 2*y-x] if 2*y-x<10_000 and (2*y-x).prime? and x.perm_of?(y) and y.perm_of?(2*y-x)
}.compact.last.join.to_i
# => 296962999629
