n = gets.chomp.to_i
a = []*(n+1)
a[0] = 1
a[1] = 1
2.upto(n) do |i|
  a[i] = a[i-1] + a[i-2]
end
puts a[n]