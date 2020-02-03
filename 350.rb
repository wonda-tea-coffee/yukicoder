require 'bigdecimal'
v, t = gets.chomp.split.map{|i| BigDecimal(i, 12)}
puts (v * t).to_i