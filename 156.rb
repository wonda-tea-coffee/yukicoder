n, m = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i).sort
n.times do |i|
  if c[i] < m
    m -= c[i]
    c[i] = 0
  elsif c[i] == m
    c[i] = 0
    break
  else
    c[i] -= m
  end
end
puts c.count(0)