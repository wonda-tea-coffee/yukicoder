x, y = gets.chomp.split.map(&:to_f)
d = Math.sqrt(x * x + y * y)
if d == d.to_i
  puts d.to_i * 2 + 1
else
  puts (d * 2).ceil.to_i
end