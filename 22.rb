n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp
q = [] # '('のindexたち
n.times do |i|
  if s[i] == '('
    q << i + 1
  else
    j = q.pop
    if i + 1 == k
      puts j
      exit
    elsif j == k
      puts i + 1
      exit
    end
  end
end