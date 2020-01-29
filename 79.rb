n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)

h = {}
l.each do |li|
  h[li] ||= 0
  h[li] += 1
end

m_cnt = -1
ans = -1
h.keys.each do |key|
  if h[key] > m_cnt || (h[key] == m_cnt && ans < key)
    ans = key
    m_cnt = h[key]
  end
end
puts ans