n = gets.chomp.to_i
b = {}
(n-1).times do
  u, v = gets.chomp.split.map(&:to_i)

  b[u] ||= []
  b[u] << v
  b[v] ||= []
  b[v] << u
end
s = b.keys.first
visited = [s]
q = [s]
until q.empty?
  p = q.shift

  b[p].each do |bi|
    next if visited.include?(bi)

    visited << bi
    q.push(bi)
  end
end
puts visited.uniq.size == n ? 'Bob' : 'Alice'