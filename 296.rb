n, h, m, t = gets.chomp.split.map(&:to_i)
n -= 1

m = m + t % 60 * n
h = (h + t / 60 * n + m / 60) % 24
m %= 60

puts h
puts m