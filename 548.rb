s = gets.chomp.chars
if s.uniq.size < 12
  puts "Impossible"
elsif s.uniq.size == 12
  puts ((?a .. ?m).to_a - s.uniq)[0]
else
  (?a .. ?m).to_a.each {|s| puts s}
end