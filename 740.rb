n, m, p, q = gets.chomp.split.map(&:to_i)

ans = 0
month = 1
while n > 0
  ans += 1

  # puts "#{month}月目 before: #{n}"
  if month >= p && month <= p + q - 1
    n -= 2 * m
  else
    n -= m
  end
  # puts "#{month}月目 after: #{n}"

  month += 1
  month = 1 if month == 13
end
puts ans