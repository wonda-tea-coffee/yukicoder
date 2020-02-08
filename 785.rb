a = []
3.times do
  l = gets.chomp
  if l == 'NONE'
    a << 16
  else
    a << ((('0'..'9').to_a + ('A'..'F').to_a) - l.split(',')).size
  end
end
puts a.map{|b| b*b}.inject(:*)