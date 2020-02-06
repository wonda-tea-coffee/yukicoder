s = gets.chomp.chars
puts s.size == s.uniq.size ? 'YES' : 'NO'