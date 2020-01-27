l, k = gets.chomp.split.map(&:to_i)
x = (l/(2*k).to_f).ceil - 1
puts k*x