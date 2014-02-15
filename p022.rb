#!/usr/bin/env ruby
#
# Names scores
# http://projecteuler.net/problem=22
#
# Using p022_names.txt, a 46K text file containing over five-thousand first
# names, begin by sorting it into alphabetical order. Then working out the
# alphabetical value for each name, multiply this value by its alphabetical
# position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is
# worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would
# obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?
#

require "csv"

class String
  def score
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    downcase.chars.inject(0) {|sum, x| sum + alphabet.index(x) + 1 }
  end
end

names = CSV.foreach("p022_names.txt").inject([], :+)
p names.sort.each.with_index.inject(0) {|sum, (x,i)| sum + (i+1)*x.score }
# => 871198282
