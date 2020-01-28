n = gets.chomp.to_i

if n % 2 == 0
  puts '1' * (n/2)
else
  puts '7' + '1' * ((n-3)/2)
end