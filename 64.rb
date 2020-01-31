f0, f1, n = gets.chomp.split.map(&:to_i)
if n % 3 == 0
  puts f0
elsif n % 3 == 1
  puts f1
else
  puts f0^f1
end