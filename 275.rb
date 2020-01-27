n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).sort

if n % 2 == 0
  puts (a[n/2-1] + a[n/2]) / 2.to_f
else
  puts a[n/2]
end