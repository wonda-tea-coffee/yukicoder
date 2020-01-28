n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i)
sum = w.sum
dp = Array.new(n) { Array.new(sum + 1) { false } }
dp[0][w[0]] = true
1.upto(n-1) do |i|
  wi = w[i]
  0.upto(sum-wi) do |j|
    next unless dp[i-1][j]

    dp[i][(j - wi).abs] = true
    dp[i][j + wi] = true
  end
end
puts dp[n-1][0] ? 'possible' : 'impossible'