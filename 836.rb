l, r, n = gets.chomp.split.map(&:to_i)
v = r - l + 1
ans = [v / n] * n
if v % n == 0
  puts ans
else
  (v % n).times do |i|
    ans[(l + i) % n] += 1
  end
  puts ans
end