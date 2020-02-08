r, d = gets.chomp.split.map(&:to_r)
puts Math.sqrt(d * d - r * r)