w = gets.chomp.to_i
d = gets.chomp.to_i

d.downto(2) do |i|
  w -= w/(i*i)
end

puts w