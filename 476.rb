n, a = gets.chomp.split.map(&:to_f)
x = gets.chomp.split.map(&:to_i)

puts x.sum/n == a ? 'YES' : 'NO'