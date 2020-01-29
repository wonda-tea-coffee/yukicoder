n = gets.chomp.to_i
n.downto(1) do |i|
  puts n.to_s*i
end