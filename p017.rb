#!/usr/bin/env ruby
#
# Number letter counts
# http://projecteuler.net/problem=17
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains
# 20 letters. The use of "and" when writing out numbers is in compliance with
# British usage.
#

ones = [
  "one",
  "two",
  "three",
  "four",
  "five",
  "six",
  "seven",
  "eight",
  "nine"
]

teens = [
  "ten",
  "eleven",
  "twelve",
  "thirteen",
  "fourteen",
  "fifteen",
  "sixteen",
  "seventeen",
  "eighteen",
  "nineteen"
]

tens = [
  "twenty",
  "thirty",
  "forty",
  "fifty",
  "sixty",
  "seventy",
  "eighty",
  "ninety"
]

ones_len  = ones.join.size     # => 36
teens_len = teens.join.size    # => 70
tens_len  = tens.join.size     # => 46

hund_len  = "hundred".size     # => 7
and_len   = "and".size         # => 3
thou_len  = "onethousand".size # => 11

ones_num  = ones.size          # => 9
teens_num = teens.size         # => 10
tens_num  = tens.size          # => 8

p 10*(ones_len + teens_len + teens_num*tens_len + tens_num*ones_len) + \
  100*ones_len + 900*hund_len + (900-9)*and_len + \
  thou_len
# => 21124
