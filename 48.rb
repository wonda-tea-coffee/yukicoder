x = gets.chomp.to_i
y = gets.chomp.to_i
l = gets.chomp.to_i

t = if x == 0 && y >= 0
      0
    elsif y >= 0
      1
    else
      2
    end

x = x.abs
y = y.abs
mx = (x/l.to_f).ceil
my = (y/l.to_f).ceil

puts t+mx+my