#!/usr/bin/env ruby
#
# Distinct primes factors
# http://projecteuler.net/problem=47
#
# The first two consecutive numbers to have two distinct prime factors are:
#
#   14 = 2 × 7
#   15 = 3 × 5
#
# The first three consecutive numbers to have three distinct prime factors are:
#
#   644 = 2² × 7 × 23
#   645 = 3 × 5 × 43
#   646 = 2 × 17 × 19.
#
# Find the first four consecutive integers to have four distinct prime factors.
# What is the first of these numbers?
#

require "prime"

n = 4
p 1.upto(Float::INFINITY).each_cons(n).find {|x| x.all? {|i| i.prime_division.size == n }}.first
# => 134043
