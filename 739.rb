s = gets.chomp
size = s.size
if size % 2 == 1
  puts 'NO'
else
  puts s[0, size/2] == s[size/2, size/2] ? 'YES' : 'NO'
end
