n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i).map{|i| i % 2}

puts (x.count(0) - x.count(1)).abs