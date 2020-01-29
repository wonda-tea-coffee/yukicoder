def to_min(hhmm)
  h, m = hhmm.split(':').map(&:to_i)
  h * 60 + m
end

n = gets.chomp.to_i
ans = 0
n.times do
  from, to = gets.chomp.split

  m_from = to_min(from)
  m_to   = to_min(to)
  m_to += 24*60 if m_to < m_from

  ans += m_to - m_from
end
puts ans