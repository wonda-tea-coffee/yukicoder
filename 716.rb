n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).sort
x = 0xffffffff
a.each_cons(2) do |a1, a2|
  x = [x, a2 - a1].min
end
puts x
puts a[n-1] - a[0]