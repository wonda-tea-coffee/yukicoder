h, m = gets.chomp.split(':').map(&:to_i)
h = (h + (m + 5) / 60) % 24
m = (m + 5) % 60
puts h.to_s.rjust(2, '0') + ":" + m.to_s.rjust(2, '0')
