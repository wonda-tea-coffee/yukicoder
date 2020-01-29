n = gets.chomp.to_i
r = (0...n).to_a
n.times do |i|
  a = gets.chomp.split
  n.times do |j|
    next if i == j
    next if a[j] == 'nyanpass'
    r -= [j]
  end
end
puts r.size == 1 ? r.first + 1 : -1