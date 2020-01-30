n = gets.chomp.to_i
i1 = 0
m = n
while n != 1
  if n % 2 == 0
    n /= 2
  else
    n = 3 * n + 1
  end

  m = n if m < n
  i1 += 1
end
puts i1
puts m