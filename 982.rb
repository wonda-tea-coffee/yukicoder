a, b = gets.chomp.split.map(&:to_i)

if a.gcd(b) > 1
  puts -1
else
  puts (a - 1) * (b - 1) / 2
end