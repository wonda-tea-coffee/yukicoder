def kado?(a)
  a[1] == a.max || a[1] == a.min
end

a = gets.chomp.split.map(&:to_i)
q = a.index(0)
r = ''
r << '1' if kado?(a.fill(1, q, 1))
r << '4' if kado?(a.fill(4, q, 1))
puts r