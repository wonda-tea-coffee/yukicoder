w, h, c = gets.chomp.split
w = w.to_i
h = h.to_i

h.times do |i|
  l = ''
  s = i % 2 == 0 ? c : c == 'W' ? 'B' : 'W'
  w.times do |j|
    l << s
    s = s == 'W' ? 'B' : 'W'
  end
  puts l
end