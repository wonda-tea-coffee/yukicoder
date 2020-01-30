a, b = gets.chomp.split.map(&:to_i)
a += 1
if a <= b
  puts 'YES'
  puts b - a
else
  puts 'NO'
  puts a - b
end