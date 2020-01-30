x, y, z = gets.chomp.split.map(&:to_i)
z.times do
  if x <= y
    x += 1
  else
    y += 1
  end
end

puts [x, y].min