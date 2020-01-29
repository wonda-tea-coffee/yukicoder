a = gets.chomp.to_i
puts "#{10 + a / 100}:#{(a % 100 / 10 * 6).to_s.rjust(2, '0')}"