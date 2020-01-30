n = gets.chomp.to_i
a = [2, 8]
b = [3, 9]
c = [7, 9]

n.times do
  fx, fy, tx, ty = gets.chomp.split.map(&:to_i)
  f = [fx, fy]
  t = [tx, ty]
  if f == a
    a = t
  elsif f == b
    b = t
  elsif f == c
    c = t
  end
end

puts a == [5, 8] && b == [4, 8] && c == [6, 8] ? 'YES' : 'NO'