x, n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
f1 = a.include?(x)
f2 = b.include?(x)

if f1 & f2
  puts 'MrMaxValu'
elsif f1 & !f2
  puts 'MrMax'
elsif !f1 & f2
  puts 'MaxValu'
else
  puts -1
end