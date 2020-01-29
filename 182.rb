n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
h = {}
a.each do |ai|
  h[ai] ||= 0
  h[ai] += 1
end
ans = 0
h.keys.each do |key|
  ans += 1 if h[key] == 1
end
puts ans