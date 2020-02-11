n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i) - [-1]

if a.empty?
  puts -1
else
  puts a.inject(&:gcd)**2
end