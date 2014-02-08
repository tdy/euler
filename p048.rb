#!/usr/bin/env ruby
#
# Self powers
# http://projecteuler.net/problem=48
#
# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
#
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
#

class Integer
  def self_power
    downto(1).inject {|sum, x| sum + x**x }
  end

  def tail(num)
    modulo(10**num)
  end
end

p 1000.self_power.tail(10)
# => 9110846700
