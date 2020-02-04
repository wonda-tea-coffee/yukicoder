l, r, m = gets.chomp.split.map(&:to_i)
s = r - l + 1
puts s >= m ? m : s