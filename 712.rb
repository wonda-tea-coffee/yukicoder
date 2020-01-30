n, m = gets.chomp.split.map(&:to_i)
ans = 0
n.times do
  ans += gets.chomp.count('W')
end
puts ans