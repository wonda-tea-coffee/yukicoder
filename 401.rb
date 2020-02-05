n = gets.chomp.to_i
mat = Array.new(n){Array.new(n){nil}}

di = 0
d = [[1, 0], [0, 1], [-1, 0], [0, -1]]
x, y = 0, 0
(n*n).times do |i|
  mat[y][x] = i + 1

  dx, dy = d[di]
  nx, ny = x + dx, y + dy

  if nx < 0 || nx >= n || ny < 0 || ny >= n || mat[ny][nx]
    di = (di + 1) % 4
  end

  x = x + d[di][0]
  y = y + d[di][1]
end

mat.each do |row|
  puts row.map{|n| n.to_s.rjust(3, '0')}.join(' ')
end