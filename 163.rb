s = gets.chomp
puts (s.chars.map do |si|
  if si == si.downcase
    si.upcase
  else
    si.downcase
  end
end.join)