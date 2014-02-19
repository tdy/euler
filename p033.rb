#!/usr/bin/env ruby
#
# Digit canceling fractions
# http://projecteuler.net/problem=33
#
# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in
# attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is
# correct, is obtained by canceling the 9s.
#
# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
#
# There are exactly four non-trivial examples of this type of fraction, less than
# one in value, and containing two digits in the numerator and denominator.
#
# If the product of these four fractions is given in its lowest common terms, find
# the value of the denominator.
#

p (1...10).map {|i| (1...i).map {|d| (1...d).map {|n|
  Rational(n,d) if Rational(10*n+i,10*i+d) == Rational(n,d)
}}}.flatten.compact.inject(:*).denominator
# => 100
