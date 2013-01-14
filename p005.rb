#!/usr/bin/env ruby
#
# Smallest multiple
# http://projecteuler.net/problem=5
#
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
#

def all_divisible?(dend, sors)
  sors.each {|sor| return false unless dend % sor == 0 } or true
end

def smallest_multiple_upto(max)
  sors = 1..max
  dend = sors.last + 1
  dend += 1 until all_divisible?(dend, sors)
  dend
end

p smallest_multiple_upto(20)
# => 232792560
