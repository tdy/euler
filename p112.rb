#!/usr/bin/env ruby
#
# Bouncy numbers
# http://projecteuler.net/problem=112
#
# Working from left-to-right if no digit is exceeded by the digit to its left
# it is called an increasing number; for example, 134468.
#
# Similarly if no digit is exceeded by the digit to its right it is called a
# decreasing number; for example, 66420.
#
# We shall call a positive integer that is neither increasing nor decreasing a
# "bouncy" number; for example, 155349.
#
# Clearly there cannot be any bouncy numbers below one-hundred, but just over
# half of the numbers below one-thousand (525) are bouncy. In fact, the least
# number for which the proportion of bouncy numbers first reaches 50% is 538.
#
# Surprisingly, bouncy numbers become more and more common and by the time we
# reach 21780 the proportion of bouncy numbers is equal to 90%.
#
# Find the least number for which the proportion of bouncy numbers is exactly 99%.
#

class Integer
  def increasing?
    to_s.chars.each_cons(2) {|x, y| return false if x > y } or true
  end

  def decreasing?
    to_s.chars.each_cons(2) {|x, y| return false if x < y } or true
  end

  def bouncy?
    not increasing? and not decreasing?
  end

  def bounciness
    bouncy? ? 1 : 0
  end
end

class Enumerator
  def min_with_bouncy_ratio_of(ratio)
    inject(0) {|sum, x| Rational(sum, x) == ratio ? (return x) : (sum += x.bounciness) }
  end
end

p 1.upto(Float::INFINITY).min_with_bouncy_ratio_of(0.99)
# => 1587000
