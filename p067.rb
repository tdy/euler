#!/usr/bin/env ruby
#
# Maximum path sum II
# http://projecteuler.net/problem=67
#
# By starting at the top of the triangle below and moving to adjacent numbers on
# the row below, the maximum total from top to bottom is 23.
#
#         3<
#       7<  4
#     2   4<  6
#   8   5   9<  3
#
# That is, 3 + 7 + 4 + 9 = 23.
#
# Find the maximum total from top to bottom in p067_triangle.txt, a 15K text file
# containing a triangle with 100 rows.
#
# NOTE: This is a much more difficult version of Problem 18. It is not possible
# to try every route to solve this problem, as there are 2**99 altogether! If you
# could check one trillion (10**12) routes every second it would take over twenty
# billion years to check them all. There is an efficient algorithm to solve it. ;o)
#

require "csv"

triangle = CSV.foreach("p067_triangle.txt").inject([], :+).map {|x| x.split.each.map(&:to_i) }
(triangle.size-2).downto(0) {|r| 0.upto(r) {|c| triangle[r][c] += triangle[r+1][c..c+1].max }}
p triangle[0][0]
# => 7273
