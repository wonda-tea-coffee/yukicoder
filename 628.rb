n = gets.chomp.to_i
scores = {}
n.times do
  gets.chomp.to_i
  m, s = gets.chomp.split.map(&:to_i)
  t = gets.chomp.split

  t.each do |ti|
    scores[ti] ||= 0
    scores[ti] += s
  end
end

scores = scores.sort do |a, b|
  if a[1] > b[1]
    -1
  elsif a[1] < b[1]
    1
  else
    a[0] < b[0] ? -1 : 1
  end
end

scores[0, 10].each do |score|
  puts "#{score[0]} #{score[1]}"
end