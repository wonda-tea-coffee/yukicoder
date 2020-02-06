n = gets.chomp.to_i
c = []
n.times do
  cnt = gets.chomp.size - 2
  c[cnt] ||= 0
  c[cnt] += 1
end
ans = max = 0
c.each.with_index do |ci, i|
  next if ci.nil?
  if ci >= max
    ans = i
    max = ci
  end
end
puts ans