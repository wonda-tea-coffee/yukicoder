k, n, f = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
r = k*n - a.sum
puts r < 0 ? '-1' : r