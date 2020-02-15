n, m, k = gets.chomp.split.map(&:to_i)

b = gets.chomp.split
op = b.shift
b = b.map(&:to_i)

a = [] * n
n.times do
  a << gets.chomp.to_i
end

sum_a = a.sum
sum_b = b.sum

if op == '+'
  puts (n * sum_b + m * sum_a) % k
else
  puts sum_a * sum_b % k
end