n = gets.chomp.to_i

x = gets.chomp.split.map(&:to_i).uniq.sort

if x.size == 1
  puts 0
  exit
end

ans = 0xffffffff
x.each_cons(2) do |x1, x2|
  ans = [ans, (x1-x2).abs].min
end
puts ans