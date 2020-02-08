gets
a1 = gets.chomp

if a1.include?(' ')
  puts "\"assert\""
  exit
end

a1 = a1.to_i
a2 = gets.chomp.to_i
a3 = gets.chomp.to_i
puts [a1, a2, a3].combination(2).map{|c| c[0] + c[1]}.uniq.sort.reverse[1]