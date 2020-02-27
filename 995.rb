require 'openssl'
MOD = (1e9 + 7).to_i

# N, M, K, p, q = gets.chomp.split.map(&:to_i)
# b = [] * N
# N.times do
#   b << gets.chomp.to_i
# end
# x = nil

x = Rational(1, 2)

puts (x.denominator.to_bn.mod_inverse(MOD).to_i * x.numerator) % MOD