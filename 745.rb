a, b, c, d = gets.chomp.split.map(&:to_i)

if d == 10
  puts "Impossible"
  exit
end

ans = 0
combo = 0

b.times do
  combo += 1
  ans += 50 * 2**((combo - 1) / 100)
end
a.times do
  combo += 1
  ans += 100 * 2**((combo - 1) / 100)
end
puts "Possible"
puts ans