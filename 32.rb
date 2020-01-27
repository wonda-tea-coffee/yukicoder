l = gets.chomp.to_i
m = gets.chomp.to_i
n = gets.chomp.to_i

m += n / 25
n %= 25

l += m / 4
m %= 4

l %= 10

puts l+m+n