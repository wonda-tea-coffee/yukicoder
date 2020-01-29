a, b, c, d = gets.chomp.split.map(&:to_i)
a1 = (a..b).to_a
a2 = (c..d).to_a
a3 = a1 & a2
puts a1.size * a2.size - a3.size