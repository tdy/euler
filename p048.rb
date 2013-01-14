#!/usr/bin/env ruby
#
# Self powers
# http://projecteuler.net/problem=48
#
# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
#
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
#

p (1..1000).each.inject {|sum, x| sum + x**x }.to_s[-10..-1]
# => 9110846700
