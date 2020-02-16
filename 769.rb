n, m = gets.chomp.split.map(&:to_i)
c = [0] * n
turn = 0
d = 1
draw = 0
m.times do
  card = gets.chomp

  puts "before: c = #{c}, turn = #{turn}, card = #{card}, d = #{d}"

  if card == 'number'
    if draw > 0
      c[turn] -= draw
      draw = 0
      turn = (turn + d) % n
    end
  elsif card == 'skip'
    if draw > 0
      c[turn] -= draw
      draw = 0
      turn = (turn + d) % n
    end

    turn = (turn + d) % n
  elsif card == 'reverse'
    if draw > 0
      turn = (turn + d) % n
      draw = 0
    end

    d = -d
  elsif card == 'drawtwo'
    draw += 2
  elsif card == 'drawfour'
    draw += 4
  end

  c[turn] += 1
  turn = (turn + d) % n

  puts "after: c = #{c}, turn = #{turn}, card = #{card}, d = #{d}"
end
winner = -1
max = 0
c.each.with_index(1) do |ci, i|
  if ci > max
    max = ci
    winner = i
  end
end
puts "#{winner} #{max}"