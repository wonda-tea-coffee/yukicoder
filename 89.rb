c = gets.chomp.to_i
a, b = gets.chomp.split.map(&:to_f)
puts ((b - a) / 2)**2 * (b + a)* Math::PI**2 * c