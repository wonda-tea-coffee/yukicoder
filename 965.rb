a = gets.chomp.split.map(&:to_i)

ans = 0xffffffff
a.combination(2) do |b, c|
  ans = [ans, (b - c).abs].min
end
puts ans