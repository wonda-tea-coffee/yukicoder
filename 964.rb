n = gets.chomp.to_i
a = ('0'..'9').to_a.reverse
ans = ''
n.times do |i|
  ans << a[i] * n
end
puts ans