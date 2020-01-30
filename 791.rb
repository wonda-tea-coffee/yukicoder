n = gets.chomp
if n.match?(/^13+$/)
  puts n.size - 1
else
  puts -1
end