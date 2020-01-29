n = gets.chomp.to_i
v = gets.chomp.split.map(&:to_i)

if n == 1
  puts v[0]
  exit
end

dp = [0]*(n)
dp[0] = v[0]
dp[1] = [v[0], v[1]].max

2.upto(n-1) do |i|
  dp[i] = [dp[i-2] + v[i], dp[i-1]].max
end

puts dp[n-1]