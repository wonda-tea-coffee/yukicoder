a, b = gets.chomp.split.map(&:to_i)
ans = 0
c = (3 - (a + b)) % 3
(a..b).to_a.each do |i|
  if i % 3 == c
    ans += 1
  end
end
puts ans