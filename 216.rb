n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

scores = [0]*101
n.times do |i|
  scores[b[i]] += a[i]
end
max = scores.max
puts scores[0] >= max ? 'YES' : 'NO'