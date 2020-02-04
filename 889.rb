p = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61]
a = [4, 9, 16, 25, 36, 49]
b = [8, 27]
c = [6, 28]

n = gets.chomp.to_i
if p.include?(n)
  puts "Sosu!"
elsif a.include?(n)
  puts "Heihosu!"
elsif b.include?(n)
  puts "Ripposu!"
elsif c.include?(n)
  puts "Kanzensu!"
else
  puts n
end