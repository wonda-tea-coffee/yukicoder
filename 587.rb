s = gets.chomp
h = {}

s.chars.each do |c|
  h[c] ||= 0
  h[c] += 1
end

ans = nil
# puts h
h.keys.each do |key|
  if h[key] > 2
    # puts "key = #{key}, ans = #{ans}"
    puts 'Impossible'
    exit
  elsif h[key] == 1
    if ans
      puts 'Impossible'
      exit
    end

    ans = key
  end
end
puts ans