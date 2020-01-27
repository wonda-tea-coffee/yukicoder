a, b = gets.chomp.split.map(&:to_i)
a.upto(b) do |i|
  puts i if i % 3 == 0 || i.to_s.index("3")
end