#!/usr/bin/env ruby
#
# Quadratic primes
# http://projecteuler.net/problem=27
#
# Euler discovered the remarkable quadratic formula:
#
# n² + n + 41
#
# It turns out that the formula will produce 40 primes for the consecutive
# values n = 0 to 39. However, when n = 40, 40² + 40 + 41 = 40(40 + 1) + 41 is
# divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
#
# The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes
# for the consecutive values n = 0 to 79. The product of the coefficients, −79 and
# 1601, is −126479.
#
# Considering quadratics of the form:
#
#   n² + an + b, where |a| < 1000 and |b| < 1000
#
#   where |n| is the absolute value of n
#   e.g. |11| = 11 and |−4| = 4
#
# Find the product of the coefficients, a and b, for the quadratic expression that
# produces the maximum number of primes for consecutive values of n, starting with n = 0.
#

class Integer
  def prime?
    return true if self == 2
    return false if self <= 1 or self % 2 == 0
    (3..Float::INFINITY).step(2) do |x|
      return true if x**2 > self
      return false if self % x == 0
    end
  end
end

nmax = amax = bmax = 0
adom = bdom = (-999..999).to_a

adom.product(bdom) do |a, b|
  n = 0
  n += 1 while (n**2 + a*n + b).prime?
  nmax, amax, bmax = n, a, b if n > nmax
end

p amax * bmax
# => -59231
