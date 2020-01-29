h, n = gets.chomp.split.map(&:to_i)
a = [h]
(n-1).times do
  a << gets.chomp.to_i
end
a = a.sort.reverse

rank = a.index(h) + 1

if rank % 10 == 1
  puts "#{rank}st"
elsif rank % 10 == 2
  puts "#{rank}nd"
elsif rank % 10 == 3
  puts "#{rank}rd"
else
  puts "#{rank}th"
end