a, b, x, y = gets.chomp.split.map(&:to_f)

c = y * a / b
if x > c
  puts y * a / b + y
elsif x < c
  puts x + x * b / a
else
  puts x + y
end