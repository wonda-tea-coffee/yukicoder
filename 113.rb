x = y = 0
gets.chomp.chars.each do |c|
  if c == 'N'
    y -= 1
  elsif c == 'E'
    x += 1
  elsif c == 'W'
    x -= 1
  else
    y += 1
  end
end
puts Math.sqrt(x*x+y*y)