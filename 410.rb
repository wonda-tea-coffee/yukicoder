px, py = gets.chomp.split.map(&:to_f)
qx, qy = gets.chomp.split.map(&:to_f)
puts (px-qx).abs/2 + (py-qy).abs/2