a = gets.chomp.split.map(&:to_i)
g = a.pop
c = [500, 100, 50, 10, 5, 1]

a.each.with_index do |ai, i|
  next if ai == 0
  d = [ai, g / c[i]].min
  g -= c[i] * d
end
puts g == 0 ? 'YES' : 'NO'