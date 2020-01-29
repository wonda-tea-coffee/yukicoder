a, b = gets.chomp.split.map(&:to_i)
puts b % a == 0 ? b / a : 'NO'