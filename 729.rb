s = gets.chomp.chars
i, j = gets.chomp.split.map(&:to_i)
t = s[i]
s[i] = s[j]
s[j] = t
puts s.join