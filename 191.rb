n = gets.chomp.to_i
c = gets.chomp.split.map(&:to_i)
a = c.sum / 10.to_f
cnt = 0
c.select do |ci|
  cnt += 1 if ci <= a
end
puts 30 * cnt