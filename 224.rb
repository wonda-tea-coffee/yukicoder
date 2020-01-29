n = gets.chomp.to_i
s = gets.chomp
t = gets.chomp

ans = 0
n.times do |i|
  ans += 1 if s[i] != t[i]
end
puts ans