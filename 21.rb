n = gets.chomp.to_i
k = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.to_i
end
puts a.max - a.min