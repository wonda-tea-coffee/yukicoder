def solve(n, k)
  return true if n <= k
  (n - 1) % (k + 1) > 0
end

p = gets.chomp.to_i
p.times do
  n, k = gets.chomp.split.map(&:to_i)
  puts solve(n, k) ? 'Win' : 'Lose'
end