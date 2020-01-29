n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
ans = 0
a.each_cons(3) do |c|
  mid = c.sort[1]
  ans += 1 if (c[0] == mid || c[2] == mid) && c.uniq.size == 3
end
puts ans