n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i).sort

if x.uniq.size < n
  puts 'NO'
  exit
end

sub = (x[1] - x[0]).abs
x.each_cons(2) do |a, b|
  next if (b - a).abs == sub

  puts 'NO'
  exit
end

puts 'YES'