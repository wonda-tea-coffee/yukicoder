# TLE!!!!!!!

@n = gets.chomp.to_i
@w = gets.chomp.split.map(&:to_i)

def solve(idx:, sum:)
  return sum == 0 if idx == @n

  solve(idx: idx + 1, sum: sum + @w[idx]) || solve(idx: idx + 1, sum: sum - @w[idx])
end

puts solve(idx: 0, sum: 0)