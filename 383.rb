a, b = gets.chomp.split.map(&:to_i)
puts b > a ? "+#{b-a}" : b-a