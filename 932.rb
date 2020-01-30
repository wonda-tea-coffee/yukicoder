s = gets.chomp.split(',').uniq
if s.size == 1 && s[0] == 'AC'
  puts 'Done!'
else
  puts 'Failed...'
end