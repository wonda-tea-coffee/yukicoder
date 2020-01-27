n, k = gets.chomp.split.map(&:to_i)
if n==k
  puts 'Drew'
elsif (n+1)%3==k
  puts 'Won'
else
  puts 'Lost'
end