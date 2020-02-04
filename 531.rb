n, m = gets.chomp.split.map(&:to_i)

if n <= m
  puts 1
elsif n % 2 == 1 || n / 2 > m
  puts -1
else
  puts 2
end