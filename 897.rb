q = gets.chomp.to_i
q.times do
  n, k = gets.chomp.split.map(&:to_i)
  puts k > 1 ? Math.log(n, k).ceil.to_i : n - 1
end