n = gets.chomp.to_i
max = 0xffffffff
mins = [max]*(n+1)
mins[1] = 1
q = [[1, 1]]
until q.empty?
  i, c = q.shift

  m = i.to_s(2).count('1')
  nc = c + 1

  j = i - m
  if j > 0 && nc < mins[j]
    q.push([j, nc])
    mins[j] = nc
  end

  k = i + m
  if k <= n && nc < mins[k]
    q.push([k, nc])
    mins[k] = nc
  end
end
puts mins[n] >= max ? -1 : mins[n]
