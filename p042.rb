#!/usr/bin/env ruby
#
# Coded triangle numbers
# http://projecteuler.net/problem=42
#
# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1);
# so the first ten triangle numbers are:
#
#   1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# By converting each letter in a word to a number corresponding to its alphabetical
# position and adding these values we form a word value. For example, the word
# value for SKY is 19 + 11 + 25 = 55 = t_10. If the word value is a triangle number
# then we shall call the word a triangle word.
#
# Using p042_words.txt, a 16K text file containing nearly two-thousand common
# English words, how many are triangle words?
#

require "csv"

class Integer
  def triangle
    self * (self+1) / 2
  end
end

class String
  def value
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    downcase.chars.inject(0) {|score, letter| score + alphabet.index(letter) + 1 }
  end

  def triangle?
    1.upto(value) {|x| return true if value == x.triangle }
    false
  end
end

words = CSV.foreach("p042_words.txt").inject([], :+)
p words.inject(0) {|triangles, word| triangles + (word.triangle? ? 1 : 0) }
# => 162
