n, m = gets.chomp.split.map(&:to_i)

f = [] * (n + 1)
f[1] = 0
f[2] = 1
(3..n).to_a.each do |i|
  f[i] = (f[i - 1] + f[i - 2]) % m
end
puts f[n]