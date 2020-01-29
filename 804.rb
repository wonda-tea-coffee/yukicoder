a, b, c, d = gets.chomp.split.map(&:to_i)
puts [a, b/c, d/(c+1)].min