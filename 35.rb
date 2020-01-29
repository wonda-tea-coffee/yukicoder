n = gets.chomp.to_i
a = 0
b = 0
n.times do
  t, s = gets.chomp.split
  t = t.to_i

  x = (12 * t / 1000.to_f).floor
  a += [s.size, x].min
  b += [s.size - x, 0].max
end
puts "#{a} #{b}"