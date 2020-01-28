a = gets.chomp.split.map(&:to_i)
c = {}

1.upto(13) do |i|
  c[i] = a.count(i)
end

pair_count = c.values.count(2)
trio_count = c.values.count(3)

if trio_count == 1 && pair_count == 1
  puts 'FULL HOUSE'
elsif trio_count == 1
  puts 'THREE CARD'
elsif pair_count == 2
  puts 'TWO PAIR'
elsif pair_count == 1
  puts 'ONE PAIR'
else
  puts 'NO HAND'
end