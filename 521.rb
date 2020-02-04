n, k = gets.chomp.split.map(&:to_i)

if k == 0 || k > n
  puts 0
elsif n % 2 == 0 || k != (n + 1) / 2
  puts n - 2
else
  puts n - 1
end