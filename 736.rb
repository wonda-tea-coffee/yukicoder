n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
g = a[0]
(1..(n-1)).to_a.each do |i|
  g = g.gcd(a[i])
end
puts a.map{|ai| (ai/g).to_s}.join(':')