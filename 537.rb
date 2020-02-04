n = gets.chomp.to_i

if n == 1
  puts 1
  exit
end

a = []

lim = (n**0.5).to_i
(1..lim).to_a.each do |d|
  next if n % d > 0

  s1 = d.to_s
  s2 = (n / d).to_s

  a << s1 + s2
  a << s2 + s1
end

puts a.uniq.size