n = gets.chomp.chars
ans = ''
size = n.size
size.times do |i|
  ans = n[size-i-1] + ans
  ans = ',' + ans if i % 3 == 2 && i != size-1
end
puts ans