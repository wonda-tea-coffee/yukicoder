n = gets.chomp.to_i
a = {}
n.times do
  b, c = gets.chomp.split.map(&:to_i)
  a[[c, b]] = b / c.to_f
end
a = a.sort{|i,j| j[1]<=>i[1]}
a.each do |key|
  v = key[0]
  puts "#{v[1]} #{v[0]}"
end