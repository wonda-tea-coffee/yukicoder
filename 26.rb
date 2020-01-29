ans = gets.chomp.to_i
m = gets.chomp.to_i
m.times do
  p, q = gets.chomp.split.map(&:to_i)
  if p == ans
    ans = q
  elsif q == ans
    ans = p
  end
end

puts ans