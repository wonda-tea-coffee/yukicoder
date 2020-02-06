@n, @k = gets.chomp.split.map(&:to_i)

@a = []
@n.times do
  @a << gets.chomp.to_i
end

def solve(sum, i)
  return 0 if sum > @k
  return sum if i == @n

  [solve(sum, i + 1), solve(sum + @a[i], i + 1)].max
end

puts solve(0, 0)