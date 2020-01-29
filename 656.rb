s = gets.chomp
ans = 0
s.chars.each do |si|
  i = si.to_i
  i = 10 if i == 0
  ans += i
end
puts ans