n = gets.chomp.to_i

if n == 0
  puts 0
  exit
end

s = []
while n > 0
  s.unshift(n % 7)
  n /= 7
end
puts s.join