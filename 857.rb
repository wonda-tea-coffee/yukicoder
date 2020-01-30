x, y, z = gets.chomp.split.map(&:to_i)
ans = z
ans -= 1 if y <= z
ans -= 1 if x <= z
puts ans