d = gets.chomp.to_i
i = 1
sum = ''
while sum.size < d
  sum << i.to_s
  i += 1
end
puts sum[d-1]