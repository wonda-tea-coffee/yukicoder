n = gets.chomp.to_i
a = (0..9).to_a

n.times do
  l = gets.chomp.split
  f = l[-1]
  l = l.slice(0, 4).map(&:to_i)

  if f == 'YES'
    a &= l
  else
    a -= l
  end
end
puts a[0]
