n = gets.chomp.to_i
max = max_i = -1
n.times do |i|
  gi, di = gets.chomp.split.map(&:to_i)
  g = gi - 30000 * di

  if g > max
    max = g
    max_i = i + 1
  end
end
if max >= 500000
  puts 'YES'
  6.times { puts max_i }
else
  puts 'NO'
end