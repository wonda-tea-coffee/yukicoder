a, b = gets.chomp.split.map(&:to_i)
sum = a + b
mul = a * b
puts sum > mul ? 'S' : sum < mul ? 'P' : 'E'