c = gets.chomp.chars
c.size.times do |i|
  if c[i] == 'I' || c[i] == 'l'
    c[i] = '1'
  elsif c[i] == 'O' || c[i] == 'o'
    c[i] = '0'
  end
end
puts c.join