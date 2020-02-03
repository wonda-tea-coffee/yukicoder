a, b = gets.chomp.split.map(&:to_i)
lim = a + 5 * b

1.upto(lim) do |i|
  j = [i / 5, b].min
  if i - 5 * j <= a
    puts i
  end
end