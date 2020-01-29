s = gets.chomp.split.map(&:to_f).sort
puts sprintf("%.2f", s[1, 4].sum / 4)