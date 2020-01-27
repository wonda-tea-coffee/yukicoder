s = gets.chomp
alp = ('A'..'Z').to_a
puts (s.chars.map.with_index(1) do |si, i|
  alp[(alp.index(si) - i) % 26]
end).join