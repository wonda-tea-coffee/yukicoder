p, q, r = gets.chomp.split.map(&:to_i)
a, b, c = gets.chomp.split.map(&:to_i)

# p * (a - 1) < n <= p * a

# min = p * (a - 1) + 1
# max = p * a

# (n / q).ceil - a = b
# (n / q).ceil = a + b
# a + b - 1 < n / q <= a + b
#
# q * (a + b - 1) < n <= q * (a + b)

# min = q * (a + b - 1) + 1
# max = q * (a + b)

# (n / r).ceil - a - b = c
# (n / r).ceil = a + b + c
# a + b + c - 1 < n / r <= a + b + c
# r * (a + b + c - 1) < n <= r * (a + b + c)

# min = r * (a + b + c - 1) + 1
# max = r * (a + b + c)

min = [p * (a - 1), q * (a + b - 1), r * (a + b + c - 1)].max + 1
max = [p * a, q * (a + b), r * (a + b + c)].min

if min <= max
  puts "#{min} #{max}"
else
  puts -1
end