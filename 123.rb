n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
c = (1..n).to_a
m.times do |i|
  head = c.slice!(a[i] - 1)
  c.unshift(head)
end

puts c[0]