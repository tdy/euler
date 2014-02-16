#!/usr/bin/env ruby
#
# Smallest multiple
# http://projecteuler.net/problem=5
#
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
#

class Numeric
  def divisible_upto?(max)
    (1..max).all? {|x| modulo(x).zero? }
  end
end

p (1..Float::INFINITY).find {|x| x.divisible_upto?(20) }
# => 232792560
