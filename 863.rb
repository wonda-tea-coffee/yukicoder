# だいたい  40倍くらいなら 1
# だいたい1600倍くらいなら 2
a = gets.chomp.to_f
b = gets.chomp.to_f

x = (b - a * 40).abs
y = (b - a * 1600).abs
if x < y
  puts 1
else
  puts 2
end