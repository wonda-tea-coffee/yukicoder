n = gets.chomp.to_i
rank = 1
ans = [1]
a0 = gets.chomp.to_i
(n-1).times do |i|
  rank += 1 if a0 < gets.chomp.to_i
  ans << rank
end
puts ans