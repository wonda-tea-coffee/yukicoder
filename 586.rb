p1 = gets.chomp.to_i
p2 = gets.chomp.to_i
n = gets.chomp.to_i
r = []
n.times do
  r << gets.chomp.to_i
end
puts (p1+p2)*(r.size-r.uniq.size)