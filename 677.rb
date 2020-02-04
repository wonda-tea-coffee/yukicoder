n = gets.chomp.to_i
a = (0..n).to_a.map{|i| 2**i}
b = (0..n).to_a.map{|i| 5**i}
c = []
a.each do |ai|
  b.each do |bi|
    c << ai * bi
  end
end
puts c.uniq.sort