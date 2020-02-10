n = gets.chomp.to_i
a = [] * (n + 1)
sums = [0] * (n + 1)
(n + 1).times do
  a << gets.chomp.to_i
end
(n + 1).times do |i|
  bi = gets.chomp.to_i
  sums[i] = bi + sums[i - 1]
end

ans = 0
mod = (1e9.to_i + 7)
n.downto(0) do |i|
  ans += a[i] * sums[n - i]
end
puts ans % mod