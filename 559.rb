s = gets.chomp
ans = 0
j = 0
s.chars.each.with_index do |si, i|
  next if si == 'B'

  ans += i - j
  j += 1
end
puts ans