a, b = gets.chomp.split.map(&:to_i)
puts ([23,24,25] - (a..b).to_a).size