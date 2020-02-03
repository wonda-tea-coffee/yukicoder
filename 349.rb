n = gets.chomp.to_i
a = []
h = {}
n.times do
  ai = gets.chomp
  a << ai

  h[ai] ||= 0
  h[ai] += 1
end
max = 0
h.keys.each do |key|
  max = [max, h[key]].max
end
puts (n + 1) / 2 < max ? 'NO' : 'YES'
