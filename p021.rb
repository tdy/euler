#!/usr/bin/env ruby
#
# Amicable numbers
# http://projecteuler.net/problem=21
#
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n
# which divide evenly into n).  If d(a) = b and d(b) = a, where a  b, then a and b
# are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55
# and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and
# 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.
#

class Array
  def sum
    inject(0, :+)
  end
end

class Numeric
  def proper_divisors
    1.upto(self**0.5).select {|x| modulo(x).zero? }.inject([]) {|x,i| i==self/i ? x<<i : x<<i<<self/i }.sort[0...-1]
  end

  def amicable_with?(n)
    equal?(n.proper_divisors.sum) and n.equal?(proper_divisors.sum) and not equal?(n)
  end
end

p 1.upto(10_000).select {|x| x.amicable_with?(x.proper_divisors.sum) }.uniq.sum
# => 31626
