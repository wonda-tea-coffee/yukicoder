s = gets.chomp
cnt = 0
8.times do
  l = gets.chomp
  cnt += l.count('b') + l.count('w')
end
if cnt % 2 == 0
  puts s
else
  puts s == 'oda' ? 'yukiko' : 'oda'
end