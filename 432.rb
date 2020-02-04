t = gets.chomp.to_i

ans = []
t.times do
  s = gets.chomp.chars.map(&:to_i)
  while s.size > 1
    u = []
    s.each_cons(2) do |sa, sb|
      c = sa + sb
      c = c.digits.sum if c >= 10
      u << c
    end
    s = u
  end
  ans << s[0]
end

puts ans