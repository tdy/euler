#!/usr/bin/env ruby
#
# Passcode derivation
# http://projecteuler.net/problem=79
#
# A common security method used for online banking is to ask the user for three
# random characters from a passcode. For example, if the passcode was 531278, they
# may ask for the 2nd, 3rd, and 5th characters; the expected reply would be: 317.
#
# The text file, p079_keylog.txt, contains fifty successful login attempts.
#
# Given that the three characters are always asked for in order, analyze the file
# so as to determine the shortest possible secret passcode of unknown length.
#

require "csv"

class Array
  def sum
    inject(0, :+)
  end

  def mean
    sum / Float(size)
  end
end

log = CSV.foreach("p079_keylog.txt").inject([], :+)

pos = {}
log.each {|x| x.chars.map(&:to_i).each.with_index {|y, i| pos[y] = pos[y] ? pos[y]+[i] : [i] }}

avg = {}
pos.each {|x| avg[x[0]] = x[1].mean }

p avg.sort_by(&:last).map(&:first).join.to_i
# => 73162890
