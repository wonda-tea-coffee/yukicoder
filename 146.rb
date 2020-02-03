n = gets.chomp.to_i
ans = 0
mod = 1e9.to_i + 7
n.times do
  c, d = gets.chomp.split.map(&:to_i)
  e = c % 2 == 0 ? c / 2 : (c + 1) / 2
  ans = (ans + e * d) % mod
end
puts ans