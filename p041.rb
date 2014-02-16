#!/usr/bin/env ruby
#
# Pandigital prime
# http://projecteuler.net/problem=41
#
# We shall say that an n-digit number is pandigital if it makes use of all the
# digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is
# also prime.
#
# What is the largest n-digit pandigital prime that exists?
#

require "prime"

class Numeric
  def pandigital?
    (1..to_s.chars.size).to_a == to_s.chars.map(&:to_i).sort
  end
end

p Prime.take_while {|x| x <= 7_654_321 }.reverse.find(&:pandigital?)
# => 7652413
