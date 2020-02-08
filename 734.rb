a, b, c = gets.chomp.split.map(&:to_r)

# 手作業
# 60 * a * x(秒)
# 機械
# c * 3600 + b * x(秒)
#
# 60 * a * x >= c * 3600 + b * x
# x * (60 * a - b) >= c * 3600
# x >= c * 3600 / (60 * a - b)

if 60 * a - b <= 0
  puts -1
else
  puts (c * 3600 / (60 * a - b)).ceil
end