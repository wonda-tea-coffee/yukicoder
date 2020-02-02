n = gets.chomp.to_i
ans = n * 2
while n > 0
  ans -= n
  n /= 2
end
puts ans