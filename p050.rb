#!/usr/bin/env ruby
#
# Consecutive prime sum
# http://projecteuler.net/problem=50
#
# The prime 41, can be written as the sum of six consecutive primes:
#
# 41 = 2 + 3 + 5 + 7 + 11 + 13
#
# This is the longest sum of consecutive primes that adds to a prime below one-
# hundred.
#
# The longest sum of consecutive primes below one-thousand that adds to a prime,
# contains 21 terms, and is equal to 953.
#
# Which prime, below one-million, can be written as the sum of the most
# consecutive primes?
#

require "prime"

class Numeric
  def primes_upto(lim)
    if block_given?
      Prime.take_while {|x| x <= lim }.each {|y| yield y if y >= self }
    else
      Prime.take_while {|x| x <= lim }.select {|y| y >= self }
    end
  end
end

class Array
  def sum
    inject(0, :+)
  end

  def cumsum_upto(lim)
    cumsum = 0
    map {|x| cumsum += x }.select {|cumsum| cumsum < lim }
  end

  def prime_sum_of_most_consecutive_primes_upto(lim)
    size.downto(2) {|n| each_cons(n) {|x| d = x[-1] - x[0]; return d if d < lim and d.prime? }}
  end
end

lim = 1_000_000
p ([0] + 1.primes_upto(lim/100).cumsum_upto(lim)).prime_sum_of_most_consecutive_primes_upto(lim)
# => 997651
