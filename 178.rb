n = gets.chomp.to_i
w = []
n.times do
  a, b = gets.chomp.split.map(&:to_i)
  w << a + 4 * b
end

if w.map{|wi| wi % 2}.uniq.size == 2
  puts -1
  exit
end

puts (w.max * n - w.sum) / 2
