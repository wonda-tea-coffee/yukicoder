x = gets.chomp.chars.sort.reverse
l = x.size - 1

l.downto(1) do |i|
  next if x[i] == x[i - 1]
  next if i == 1 && x[i] == "0"

  tmp = x[i]
  x[i] = x[i - 1]
  x[i - 1] = tmp
  p x.join.to_i
  exit
end

puts -1