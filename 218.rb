a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

x = (a / b).ceil
y = (a / c).ceil

puts x*2/3.0 >= y ? 'YES' : 'NO'