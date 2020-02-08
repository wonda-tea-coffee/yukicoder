a, b = gets.chomp.split.map(&:to_r)
c = sprintf("%.52f", a / b).chars
c.pop
c.pop
puts c.join