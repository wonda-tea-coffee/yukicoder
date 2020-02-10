@n = gets.chomp.to_i
@a = gets.chomp.split.map(&:to_i)
@memo = {}

def solve(m)
  return @memo[m] if @memo[m]
  return 0 if m == 0

  max = 0
  (0...@n).to_a.each do |i|
    next if m & (1 << i) == 0

    ((i + 1)...@n).to_a.each do |j|
      next if m & (1 << j) == 0

      max = [max, solve(m & ~(1 << i) & ~(1 << j)) + (@a[i] ^ @a[j])].max
    end
  end

  @memo[m] = max
end

puts solve((1 << @n) - 1)