#!/usr/bin/env ruby
#
# Coin sums
# http://projecteuler.net/problem=31
#
# In England the currency is made up of pound, £, and pence, p, and there are
# eight coins in general circulation:
#
#   1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
#
# It is possible to make £2 in the following way:
#
#   1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
#
# How many different ways can £2 be made using any number of coins?
#

class Integer
  def coin_combos
    COINS = [1, 2, 5, 10, 20, 50, 100, 200]

    result = [1] + [0]*self
    COINS.size.times {|x| COINS[x].upto(self) {|y| result[y] += result[y-COINS[x]] }}
    result.last
  end
end

p 200.coin_combos
# => 73682
