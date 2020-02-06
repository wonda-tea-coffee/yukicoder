n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).sort
ans = 0
(1..n).to_a.each do |i|
  ans += (i - a[i-1]).abs
end
puts ans