#!/usr/bin/env ruby
#
# Roman numerals
# http://projecteuler.net/problem=89
#
# The rules for writing Roman numerals allow for many ways of writing each number
# (see About Roman Numerals...). However, there is always a "best" way of writing
# a particular number.
#
# For example, the following represent all of the legitimate ways of writing the
# number sixteen:
#
#   IIIIIIIIIIIIIIII  VIIIIIIIIIII  VVIIIIII  XIIIIII  VVVI  XVI
#
# The last example being considered the most efficient, as it uses the least
# number of numerals.
#
# The 11K text file, p089_roman.txt, contains one thousand numbers written in
# valid, but not necessarily minimal, Roman numerals; that is, they are arranged
# in descending units and obey the subtractive pair rule.
#
# Find the number of characters saved by writing each of these in their minimal
# form.
#
# NOTE: You can assume that all the Roman numerals in the file contain no more
# than four consecutive identical units.
#

require "csv"

p CSV.foreach("p089_roman.txt").map(&:join).inject(0) {|saved, x|
  saved + 2*x.scan(/CCCC|XXXX|IIII/).size + x.scan(/DCCCC|LXXXX|VIIII/).size
}
# => 743
