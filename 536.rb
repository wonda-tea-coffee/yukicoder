s = gets.chomp.chars

if s[-2] == 'a' && s[-1] == 'i'
  s[-2] = 'A'
  s[-1] = 'I'
  puts s.join
else
  puts s.join + '-AI'
end