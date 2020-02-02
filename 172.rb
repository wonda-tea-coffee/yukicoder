x, y, r = gets.chomp.split.map(&:to_i)
puts (x.abs + y.abs + r * 2 / Math.sqrt(2)).ceil