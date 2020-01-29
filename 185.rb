n = gets.chomp.to_i
a = []
f = false
n.times do
  x, y = gets.chomp.split.map(&:to_i)
  if x >= y
    f = true
    next
  else
    a << y - x
  end
end
puts f ? -1 : a.uniq.size == 1 ? a[0] : -1
